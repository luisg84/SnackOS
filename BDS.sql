


CREATE TABLE ordenes (
    id_orden integer NOT NULL,
    tipo character varying(20),
    total integer,
    transaccion character varying(20),
    fecha date,
    id_trabajador integer,

    PRIMARY KEY (id_orden),
      FOREIGN KEY (id_trabajador) REFERENCES trabajador(id_trabajador)

);

CREATE TABLE productos (
    id_producto integer NOT NULL,
    nombre character varying(30),
    tipo character varying(25),
    precio integer,
    envase character varying(25),
    clasificacion character varying(20),
    descuento integer,
    PRIMARY KEY (id_producto)
);




CREATE TABLE ubicacion (
    id_ubicacion integer NOT NULL,
    edificio character varying(15),
    aula character varying(5),
    PRIMARY KEY (id_ubicacion)
);



create table ubicacion_cliente(
          id_ubicacion integer NOT NULL,
          id_cliente integer NOT NULL,
          PRIMARY key(id_ubicacion,id_cliente)
);


CREATE TABLE cliente_orden (
    id_cliente integer NOT NULL,
    id_orden integer NOT NULL,
    PRIMARY KEY (id_cliente, id_orden)
);
