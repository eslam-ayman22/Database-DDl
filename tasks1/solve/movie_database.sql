
CREATE TABLE actor(
	act_id INT IDENTITY(1,1) PRIMARY KEY,
	act_fname varchar(20),
	act_lname varchar(20),
	act_gender varchar(1)
);
GO



CREATE TABLE director(
	dir_id INT IDENTITY(1,1) PRIMARY KEY,
	dir_fname varchar(20),
	dir_lname varchar(20)
);
Go



CREATE TABLE Movie(
	mov_id INT IDENTITY(1,1) PRIMARY KEY,
	mov_title varchar(50),
	mov_year INT,
	mov_time INT,
	mov_lang varchar(50),
	mov_dt_rel date,
	mov_rel_country varchar(5)
);
GO



CREATE TABLE movie_direction(

	dir_id INT,
	mov_id INT

	FOREIGN KEY(dir_id)
	REFERENCES director(dir_id),

	FOREIGN KEY(mov_id)
	REFERENCES dbo.Movie(mov_id),



);



CREATE TABLE movie_cast(
	act_id INT,
	mov_id INT,
	role varchar(30)

	FOREIGN KEY(act_id)
	 REFERENCES actor(act_id),

	FOREIGN KEY(mov_id)
	 REFERENCES Movie(mov_id),


);
GO



CREATE TABLE reviewer(
	rev_id INT IDENTITY(1,1) PRIMARY KEY,
	rev_name varchar(30)
);
GO


CREATE TABLE genres(
	gen_id INT IDENTITY(1,1) PRIMARY KEY,
	gen_title varchar(20)
);
GO


CREATE TABLE moive_genres(
	mov_id INT ,
	gen_id INT,

	FOREIGN KEY(mov_id)
	  REFERENCES Movie(mov_id),

	FOREIGN KEY(gen_id)
	  REFERENCES genres(gen_id),


);
GO

CREATE TABLE rating (
	mov_id INT,	
	rev_id INT,
	rev_stars INT,
	num_o_ratings INT,

	FOREIGN KEY(mov_id)
	  REFERENCES Movie(mov_id),

	  FOREIGN KEY(rev_id)
	  REFERENCES reviewer(rev_id),

);

