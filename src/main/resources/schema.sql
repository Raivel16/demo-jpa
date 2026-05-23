create table if not exists categoria(
    id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(200) not null
);

create table if not exists task(
    id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    titulo VARCHAR(200) not null,
    fecha_creacion date  null,
    id_categoria int null,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);



