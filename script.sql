-- psql "sixtowar" < script.sql -U "sixtowar"
-- Crear la base de datos
DROP DATABASE posts;
CREATE DATABASE posts;
\c posts;
CREATE TABLE posts( 
    id INT, 
    nombre_de_usuario VARCHAR(25), 
    fecha_de_creacion DATE, 
    contenido VARCHAR(255), 
    descripcion VARCHAR(255), 
PRIMARY KEY(id));

-- Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos".

 INSERT INTO posts(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) 
 VALUES (1, 'Pamela', '2021-11-30', 'Post 1', 'Descripcion de Post 1.');
 INSERT INTO posts(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) 
 VALUES (2, 'Pamela', '2021-11-30', 'Post 2', 'Descripcion de Post 2.');
 INSERT INTO posts(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) 
 VALUES (3, 'Carlos', '2021-11-30', 'Soy el post de carlos', 'Descripcion de Post 3');

-- Modificar la tabla post, agregando la columna título

 ALTER TABLE posts ADD titulo VARCHAR(255);

 -- Agregar título a las publicaciones ya ingresadas
 UPDATE posts SET titulo = 'Soy un titulo';

 --Insertar 2 post para el usuario "Pedro".
INSERT INTO posts(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) 
 VALUES (4, 'Pedro', '2021-11-30', 'Post 4', 'Descripcion de Post 4.', 'soy el titulo 4');
 INSERT INTO posts(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) 
 VALUES (5, 'Pedro', '2021-11-30', 'Post 5', 'Descripcion de Post 5.', 'soy el titulo 5');
 
 --Eliminar el post de Carlos.

 DELETE FROM posts WHERE nombre_de_usuario = 'Carlos';

 --Agregar un nuevo posts para Carlos.

 INSERT INTO posts(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) 
 VALUES (6, 'Carlos', '2021-11-30', 'Soy el post de carlos', 'Descripcion de Post 3', 'titulo de carlos');


 CREATE TABLE comments( 
    id SERIAL, 
    fecha_de_creacion TIMESTAMP, 
    content VARCHAR(255),  
    post_id INT, 
    PRIMARY KEY(id),
    FOREIGN KEY(post_id) REFERENCES posts(id)
    );

--id, fecha, hora decreación y contenido,

INSERT INTO comments(fecha_de_creacion,content,post_id) VALUES ('2021-12-31 19:38:00','HOLA SOY UN CONTENIDO',1);
