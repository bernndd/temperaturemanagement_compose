CREATE
    DATABASE data;
\c data;
CREATE
    EXTENSION IF NOT EXISTS "uuid-ossp";

create table if not exists data_log
(	
	sensor_id text NOT NULL primary key,
    "timestamp" timestamp without time zone NOT NULL,
    value real NOT NULL
);

alter table data_log
    owner to postgres;
	
	
	
create table if not exists sensor_config
(	
	sensor_id text NOT NULL primary key,
	"name" text NOT NULL,
	unit text NOT NULL,
	profil_id text NOT NULL,
	room_id text NOT NULL
);

alter table sensor_config
    owner to postgres;
	
	
create table if not exists profil_config
(	
	profil_id text NOT NULL primary key,
	"name" text NOT NULL
);

alter table profil_config
    owner to postgres;
	
	
create table if not exists profil_data
(	
	profil_id text NOT NULL primary key,
    "timestamp" time NOT NULL,
    value real NOT NULL
);

alter table profil_data
    owner to postgres;
	
	
	
	
create table if not exists rooms
(	
	room_id text NOT NULL primary key,
	"name" text NOT NULL,
	size real NOT NULL,
	height real NOT NULL
);

alter table rooms
    owner to postgres;