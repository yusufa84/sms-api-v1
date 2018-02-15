CREATE SEQUENCE public.user_auth_id_seq
INCREMENT BY 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1;

CREATE TABLE public.user_auth (
	id int4 NOT NULL DEFAULT nextval('user_auth_id_seq'::regclass),
	email varchar(100) NULL,
	password varchar(200) NULL,
	user_role varchar(100) NULL,
	verified varchar(100) NULL,
	created_on timestamp NULL,
	modified_on timestamp NULL,
	CONSTRAINT user_pk PRIMARY KEY (id)
)
WITH (
	OIDS=FALSE
) ;

CREATE SEQUENCE public.owner_id_seq
INCREMENT BY 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1;

--drop table owner
CREATE TABLE public.owner (
	id int4 NOT NULL DEFAULT nextval('owner_id_seq'::regclass),
	first_name varchar(100),
	last_name varchar(100),
	email varchar(100),
	contact_number varchar(100),
	owned_owned_id int4,
	user_auth_id int4, 
	permenant_add_line1 varchar (100),
	permenant_add_line2 varchar (100) NULL,
	permenant_add_line3 varchar (100) NULL,
	permenant_city varchar (100),
	permenant_state varchar (100),
	permenant_country varchar (100),
	permenant_pincode varchar (100),
	comm_add_line1 varchar (100),
	comm_add_line2 varchar (100) NULL,
	comm_add_line3 varchar (100) NULL,
	comm_city varchar (100),
	comm_state varchar (100),
	comm_country varchar (100),
	comm_pincode varchar (100),	
	ownership_status varchar (100),
	CONSTRAINT owner_pk PRIMARY KEY (id)
)
WITH (
	OIDS=FALSE
) ;


CREATE SEQUENCE public.property_id_seq
INCREMENT BY 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1;

--drop table owner_detail
CREATE TABLE public.property (
	property_id varchar(20) NOT NULL,
	property_type varchar(100),
	builtup_area int4,
	carpet_area int4,
	CONSTRAINT property_pk PRIMARY KEY (property_id)
)
WITH (
	OIDS=FALSE
) ;

-- DROP SEQUENCE public.blacklist_tokens_id_seq;

CREATE SEQUENCE public.blacklist_tokens_id_seq
INCREMENT BY 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 25;

CREATE TABLE public.blacklist_tokens (
	id int4 NOT NULL DEFAULT nextval('blacklist_tokens_id_seq'::regclass),
	token varchar(500) NOT NULL,
	blacklisted_on timestamp NOT NULL,
	CONSTRAINT blacklist_tokens_pkey PRIMARY KEY (id),
	CONSTRAINT blacklist_tokens_token_key UNIQUE (token)
)
WITH (
	OIDS=FALSE
) ;
