#projeto base de dados
import warnings
warnings.filterwarnings('ignore', category=FutureWarning)
from flask import abort, render_template, Flask
import logging
import db

APP = Flask(__name__)
# Start page
@APP.route('/')
def index():
    stats = {}
    x = db.execute('SELECT COUNT(*) AS manga FROM MANGA').fetchone()
    stats.update(x)
    x = db.execute('SELECT COUNT(*) AS anime FROM ANIME').fetchone()
    stats.update(x)   
    logging.info(stats)
    return render_template('index.html',stats=stats)

#Manga 
@APP.route('/mangas/')
def list_mangas():
    mangas = db.execute(
      '''
      SELECT MangaId,manga_name,chapters,volumes,mangaRating,start_date,end_date,pre_quel
      FROM MANGA
      ORDER BY manga_name
      ''').fetchall()
    return render_template('manga-list.html', mangas=mangas)
    
@APP.route('/mangas/<int:id>/')
def get_manga(id):
    manga = db.execute(
      '''
      SELECT MangaId,manga_name,chapters,volumes,mangaRating,start_date,end_date,pre_quel
      FROM MANGA 
      WHERE MangaId = %s
      ''', id).fetchone()
    if manga is None:
        abort(404, 'Manga id {} does not exist.'.format(id))
    
    genres = db.execute(
      '''
      SELECT GenreId, Label 
      FROM MANGA_GENRE NATURAL JOIN GENRE NATURAL JOIN  MANGA
      WHERE MangaId = %s 
      ORDER BY Label
      ''', id).fetchall()
    return render_template('manga.html',manga = manga,genres = genres)

@APP.route('/mangas/search/<expr>/')
def search_manga(expr):
  search = { 'expr': expr }
  expr = '%' + expr + '%'
  mangas = db.execute(
      ''' 
      SELECT MangaId, manga_name
      FROM MANGA
      WHERE manga_name LIKE %s
      ''', expr).fetchall()
  return render_template('manga-search.html',
           search=search,mangas=mangas)








#Anime
@APP.route('/animes/')
def list_animes():
    animes = db.execute(
      '''
      SELECT AnimeId,animeName,episode_number,animeRating,MangaId,StudioId,start_date,end_date
      FROM ANIME
      ORDER BY animeName
      ''').fetchall()
    return render_template('anime-list.html', animes=animes)

@APP.route('/animes/<int:id>/')
def get_anime(id):
    anime = db.execute(
      '''
      SELECT AnimeId,animeName,episode_number,animeRating,MangaId,StudioId,start_date,end_date
      FROM ANIME
      WHERE AnimeId = %s
      ''', id).fetchone()
    if anime is None:
        abort(404, 'Anime id {} does not exist.'.format(id))
    
    genres = db.execute(
      '''
      SELECT GenreId, Label 
      FROM ANIME_GENRE NATURAL JOIN GENRE NATURAL JOIN  ANIME
      WHERE AnimeId = %s 
      ORDER BY Label
      ''', id).fetchall()
    
    return render_template('anime.html',anime = anime,genres = genres)


@APP.route('/animes/search/<expr>/')
def search_anime(expr):
  search = { 'expr': expr }
  expr = '%' + expr + '%'
  animes = db.execute(
      ''' 
      SELECT AnimeId, animeName
      FROM ANIME
      WHERE animeName LIKE %s
      ''', expr).fetchall()
  return render_template('anime-search.html',
           search=search,animes=animes)







#Genres
@APP.route('/genres/')
def list_genres():
    genres = db.execute('''
      SELECT GenreId, Label 
      FROM GENRE
      ORDER BY Label
    ''').fetchall()
    return render_template('genre-list.html', genres=genres)


  
@APP.route('/genres/<int:id>/')
def view_mangas_by_genre(id):
  genre = db.execute(
    '''
    SELECT GenreId, Label
    FROM GENRE 
    WHERE GenreId = %s
    ''', id).fetchone()
  if genre is None:
     abort(404, 'Genre id {} does not exist.'.format(id))

  mangas = db.execute(
    '''
    SELECT MangaId, manga_name
    FROM MANGA_GENRE NATURAL JOIN MANGA
    WHERE GenreId = %s
    ORDER BY manga_name
    ''', id).fetchall()

  animes = db.execute(
    '''
    SELECT AnimeId, animeName
    FROM ANIME_GENRE NATURAL JOIN ANIME
    WHERE GenreId = %s
    ORDER BY animeName
    ''', id).fetchall() 
  return render_template('genre.html', 
           genre=genre, mangas = mangas,animes=animes)


#@APP.route('/genres_A/<int:id>/')
#def view_animes_by_genre(id):
#  genre = db.execute(
#    '''
#    SELECT GenreId, Label
#    FROM GENRE 
#    WHERE GenreId = %s
#    ''', id).fetchone()
#  if genre is None:
#     abort(404, 'Genre id {} does not exist.'.format(id))
#
#  animes = db.execute(
#    '''
#    SELECT AnimeId, animeName
#    FROM ANIME_GENRE NATURAL JOIN ANIME
#    WHERE GenreId = %s
#    ORDER BY animeName
#    ''', id).fetchall()
#
#  return render_template('genre_A.html', 
#           genre=genre, animes = animes)

#Authors
@APP.route('/authors/')
def list_authors():
    authors = db.execute('''
      SELECT AuthorId, authorName ,nationality,date_of_birth,date_of_death
      FROM AUTHORS
      ORDER BY authorName
    ''').fetchall()
    return render_template('author-list.html', authors=authors)


@APP.route('/authors/<int:id>/')
def view_manga_by_author(id):
  author = db.execute(
    '''
    SELECT AuthorId, authorName ,nationality,date_of_birth,date_of_death
    FROM AUTHORS
    WHERE AuthorId = %s
    ''', id).fetchone()

  if author is None:
     abort(404, 'Author Id {} does not exist.'.format(id))
  
  mangas = db.execute(
    '''
    SELECT MangaId,AuthorId, manga_name
    FROM MANGA_AUTHOR NATURAL JOIN AUTHORS NATURAL JOIN MANGA 
    WHERE AuthorId = %s
    ORDER BY manga_name
    ''', id).fetchall()
  return render_template('author.html', author=author,mangas=mangas)   

@APP.route('/authors/search/<expr>/')
def search_author(expr):
  search = { 'expr': expr }
  expr = '%' + expr + '%'
  authors = db.execute(
      ''' 
      SELECT AuthorId, authorName
      FROM AUTHORS
      WHERE authorName LIKE %s
      ''', expr).fetchall()
  return render_template('author-search.html',
           search=search,authors=authors)

 
#Studio
@APP.route('/studios/')
def list_studios():
    studios = db.execute('''
      SELECT StudioId, studioName ,studioName,studioOwner,LCountry,LCity
      FROM STUDIOS
      ORDER BY studioName
    ''').fetchall()
    return render_template('studio-list.html', studios =studios)

@APP.route('/studios/<int:id>/')
def view_animes_by_studio(id):
  studio = db.execute(
    '''
    SELECT StudioId, studioName,studioOwner,LCountry, LCity 
    FROM STUDIOS 
    WHERE StudioId = %s
    ''', id).fetchone()

  if studio is None:
     abort(404, 'Studio id {} does not exist.'.format(id))

  animes = db.execute(
    '''
    SELECT AnimeId, animeName
    FROM ANIME NATURAL JOIN STUDIOS
    WHERE StudioId = %s
    ORDER BY animeName
    ''', id).fetchall()

  return render_template('studio.html', 
           studio=studio, animes=animes)

@APP.route('/studios/search/<expr>/')
def search_studio(expr):
  search = { 'expr': expr }
  expr = '%' + expr + '%'
  studios = db.execute(
      ''' 
      SELECT StudioId, studioName
      FROM STUDIOS 
      WHERE studioName LIKE %s
      ''', expr).fetchall()
  return render_template('studio-search.html',
           search=search,studios=studios)  


