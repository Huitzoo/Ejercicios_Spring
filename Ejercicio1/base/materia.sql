--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: vive
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO vive;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: t_comite_revisor; Type: TABLE; Schema: public; Owner: vive
--

CREATE TABLE public.t_comite_revisor (
    id integer NOT NULL,
    diseniador character varying(45) NOT NULL,
    revisor character varying(45) NOT NULL,
    autorizador character varying(45) NOT NULL
);


ALTER TABLE public.t_comite_revisor OWNER TO vive;

--
-- Name: t_comite_revisor_id_seq; Type: SEQUENCE; Schema: public; Owner: vive
--

CREATE SEQUENCE public.t_comite_revisor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_comite_revisor_id_seq OWNER TO vive;

--
-- Name: t_comite_revisor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vive
--

ALTER SEQUENCE public.t_comite_revisor_id_seq OWNED BY public.t_comite_revisor.id;


--
-- Name: t_contenido; Type: TABLE; Schema: public; Owner: vive
--

CREATE TABLE public.t_contenido (
    id integer NOT NULL,
    numero integer NOT NULL,
    nombre character varying(45) NOT NULL,
    horas_docente integer NOT NULL,
    horas_autonomas integer NOT NULL
);


ALTER TABLE public.t_contenido OWNER TO vive;

--
-- Name: t_contenido_id_seq; Type: SEQUENCE; Schema: public; Owner: vive
--

CREATE SEQUENCE public.t_contenido_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_contenido_id_seq OWNER TO vive;

--
-- Name: t_contenido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vive
--

ALTER SEQUENCE public.t_contenido_id_seq OWNED BY public.t_contenido.id;


--
-- Name: t_encabezado_basico; Type: TABLE; Schema: public; Owner: vive
--

CREATE TABLE public.t_encabezado_basico (
    id integer NOT NULL,
    nivel integer NOT NULL,
    modalidad character varying(45) NOT NULL,
    tipo character varying(45) NOT NULL,
    vigencia character varying(45) NOT NULL,
    creditos character varying(45) NOT NULL,
    tiempos text NOT NULL,
    academia character varying(45) NOT NULL,
    especialidad character varying(45) NOT NULL,
    materia_id integer NOT NULL
);


ALTER TABLE public.t_encabezado_basico OWNER TO vive;

--
-- Name: t_encabezado_basico_id_seq; Type: SEQUENCE; Schema: public; Owner: vive
--

CREATE SEQUENCE public.t_encabezado_basico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_encabezado_basico_id_seq OWNER TO vive;

--
-- Name: t_encabezado_basico_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vive
--

ALTER SEQUENCE public.t_encabezado_basico_id_seq OWNED BY public.t_encabezado_basico.id;


--
-- Name: t_evaluacion; Type: TABLE; Schema: public; Owner: vive
--

CREATE TABLE public.t_evaluacion (
    id integer NOT NULL,
    practica character varying(4) NOT NULL,
    teorica character varying(4) NOT NULL
);


ALTER TABLE public.t_evaluacion OWNER TO vive;

--
-- Name: t_evaluacion_id_seq; Type: SEQUENCE; Schema: public; Owner: vive
--

CREATE SEQUENCE public.t_evaluacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_evaluacion_id_seq OWNER TO vive;

--
-- Name: t_evaluacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vive
--

ALTER SEQUENCE public.t_evaluacion_id_seq OWNED BY public.t_evaluacion.id;


--
-- Name: t_materia; Type: TABLE; Schema: public; Owner: vive
--

CREATE TABLE public.t_materia (
    id integer NOT NULL,
    nombre_materia character varying(45) NOT NULL,
    orientacion_educativa character varying(45) NOT NULL,
    contenidos character varying(45) NOT NULL,
    salida_lateral character varying(45) NOT NULL,
    area_informacion character varying(45) NOT NULL,
    intencion_educativa character varying(45) NOT NULL,
    propositos character varying(45) NOT NULL,
    id_comite_id integer NOT NULL,
    id_docente_id integer NOT NULL,
    id_eval_id integer NOT NULL,
    programa_academico character varying(255)
);


ALTER TABLE public.t_materia OWNER TO vive;

--
-- Name: t_materia_id_seq; Type: SEQUENCE; Schema: public; Owner: vive
--

CREATE SEQUENCE public.t_materia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_materia_id_seq OWNER TO vive;

--
-- Name: t_materia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vive
--

ALTER SEQUENCE public.t_materia_id_seq OWNED BY public.t_materia.id;


--
-- Name: t_perfil_docente; Type: TABLE; Schema: public; Owner: vive
--

CREATE TABLE public.t_perfil_docente (
    id integer NOT NULL,
    conocimientos text NOT NULL,
    experiencia_laboral text NOT NULL,
    habilidades text NOT NULL,
    actitudes text NOT NULL
);


ALTER TABLE public.t_perfil_docente OWNER TO vive;

--
-- Name: t_perfil_docente_id_seq; Type: SEQUENCE; Schema: public; Owner: vive
--

CREATE SEQUENCE public.t_perfil_docente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_perfil_docente_id_seq OWNER TO vive;

--
-- Name: t_perfil_docente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vive
--

ALTER SEQUENCE public.t_perfil_docente_id_seq OWNED BY public.t_perfil_docente.id;


--
-- Name: t_practica; Type: TABLE; Schema: public; Owner: vive
--

CREATE TABLE public.t_practica (
    id integer NOT NULL,
    numero integer NOT NULL,
    nombre_practica character varying(45) NOT NULL,
    duracion character varying(45) NOT NULL,
    lugar character varying(45) NOT NULL,
    horas integer NOT NULL,
    evaluacion_acreditacion character varying(45) NOT NULL
);


ALTER TABLE public.t_practica OWNER TO vive;

--
-- Name: t_practica_id_seq; Type: SEQUENCE; Schema: public; Owner: vive
--

CREATE SEQUENCE public.t_practica_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_practica_id_seq OWNER TO vive;

--
-- Name: t_practica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vive
--

ALTER SEQUENCE public.t_practica_id_seq OWNED BY public.t_practica.id;


--
-- Name: t_referencia; Type: TABLE; Schema: public; Owner: vive
--

CREATE TABLE public.t_referencia (
    id integer NOT NULL,
    clave character varying(45) NOT NULL,
    materia_id integer NOT NULL,
    descripcion character varying(255)
);


ALTER TABLE public.t_referencia OWNER TO vive;

--
-- Name: t_referencia_id_seq; Type: SEQUENCE; Schema: public; Owner: vive
--

CREATE SEQUENCE public.t_referencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_referencia_id_seq OWNER TO vive;

--
-- Name: t_referencia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vive
--

ALTER SEQUENCE public.t_referencia_id_seq OWNED BY public.t_referencia.id;


--
-- Name: t_rel_ut_practica; Type: TABLE; Schema: public; Owner: vive
--

CREATE TABLE public.t_rel_ut_practica (
    id integer NOT NULL,
    id_practica_id integer NOT NULL,
    id_ut_id integer NOT NULL
);


ALTER TABLE public.t_rel_ut_practica OWNER TO vive;

--
-- Name: t_rel_ut_practica_id_seq; Type: SEQUENCE; Schema: public; Owner: vive
--

CREATE SEQUENCE public.t_rel_ut_practica_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_rel_ut_practica_id_seq OWNER TO vive;

--
-- Name: t_rel_ut_practica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vive
--

ALTER SEQUENCE public.t_rel_ut_practica_id_seq OWNED BY public.t_rel_ut_practica.id;


--
-- Name: t_unidad_tematica; Type: TABLE; Schema: public; Owner: vive
--

CREATE TABLE public.t_unidad_tematica (
    id integer NOT NULL,
    estrategia_aprendizaje character varying(45) NOT NULL,
    evaluacion_aprendizaje text NOT NULL,
    id_contenido_id integer NOT NULL,
    materia_id integer NOT NULL
);


ALTER TABLE public.t_unidad_tematica OWNER TO vive;

--
-- Name: t_unidad_tematica_id_seq; Type: SEQUENCE; Schema: public; Owner: vive
--

CREATE SEQUENCE public.t_unidad_tematica_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_unidad_tematica_id_seq OWNER TO vive;

--
-- Name: t_unidad_tematica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vive
--

ALTER SEQUENCE public.t_unidad_tematica_id_seq OWNED BY public.t_unidad_tematica.id;


--
-- Name: t_comite_revisor id; Type: DEFAULT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_comite_revisor ALTER COLUMN id SET DEFAULT nextval('public.t_comite_revisor_id_seq'::regclass);


--
-- Name: t_contenido id; Type: DEFAULT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_contenido ALTER COLUMN id SET DEFAULT nextval('public.t_contenido_id_seq'::regclass);


--
-- Name: t_encabezado_basico id; Type: DEFAULT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_encabezado_basico ALTER COLUMN id SET DEFAULT nextval('public.t_encabezado_basico_id_seq'::regclass);


--
-- Name: t_evaluacion id; Type: DEFAULT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_evaluacion ALTER COLUMN id SET DEFAULT nextval('public.t_evaluacion_id_seq'::regclass);


--
-- Name: t_materia id; Type: DEFAULT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_materia ALTER COLUMN id SET DEFAULT nextval('public.t_materia_id_seq'::regclass);


--
-- Name: t_perfil_docente id; Type: DEFAULT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_perfil_docente ALTER COLUMN id SET DEFAULT nextval('public.t_perfil_docente_id_seq'::regclass);


--
-- Name: t_practica id; Type: DEFAULT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_practica ALTER COLUMN id SET DEFAULT nextval('public.t_practica_id_seq'::regclass);


--
-- Name: t_referencia id; Type: DEFAULT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_referencia ALTER COLUMN id SET DEFAULT nextval('public.t_referencia_id_seq'::regclass);


--
-- Name: t_rel_ut_practica id; Type: DEFAULT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_rel_ut_practica ALTER COLUMN id SET DEFAULT nextval('public.t_rel_ut_practica_id_seq'::regclass);


--
-- Name: t_unidad_tematica id; Type: DEFAULT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_unidad_tematica ALTER COLUMN id SET DEFAULT nextval('public.t_unidad_tematica_id_seq'::regclass);


--
-- Data for Name: t_comite_revisor; Type: TABLE DATA; Schema: public; Owner: vive
--

COPY public.t_comite_revisor (id, diseniador, revisor, autorizador) FROM stdin;
3	k	k	k
\.


--
-- Data for Name: t_contenido; Type: TABLE DATA; Schema: public; Owner: vive
--

COPY public.t_contenido (id, numero, nombre, horas_docente, horas_autonomas) FROM stdin;
6	9	i	4	9
\.


--
-- Data for Name: t_encabezado_basico; Type: TABLE DATA; Schema: public; Owner: vive
--

COPY public.t_encabezado_basico (id, nivel, modalidad, tipo, vigencia, creditos, tiempos, academia, especialidad, materia_id) FROM stdin;
5	9	k	k	k	k	k	k	k	4
\.


--
-- Data for Name: t_evaluacion; Type: TABLE DATA; Schema: public; Owner: vive
--

COPY public.t_evaluacion (id, practica, teorica) FROM stdin;
1	j	j
\.


--
-- Data for Name: t_materia; Type: TABLE DATA; Schema: public; Owner: vive
--

COPY public.t_materia (id, nombre_materia, orientacion_educativa, contenidos, salida_lateral, area_informacion, intencion_educativa, propositos, id_comite_id, id_docente_id, id_eval_id, programa_academico) FROM stdin;
4	escom	k	k	k	k	k	k	3	2	1	\N
\.


--
-- Data for Name: t_perfil_docente; Type: TABLE DATA; Schema: public; Owner: vive
--

COPY public.t_perfil_docente (id, conocimientos, experiencia_laboral, habilidades, actitudes) FROM stdin;
2	j	j	j	j
\.


--
-- Data for Name: t_practica; Type: TABLE DATA; Schema: public; Owner: vive
--

COPY public.t_practica (id, numero, nombre_practica, duracion, lugar, horas, evaluacion_acreditacion) FROM stdin;
7	4	j	j	j	4	j
\.


--
-- Data for Name: t_referencia; Type: TABLE DATA; Schema: public; Owner: vive
--

COPY public.t_referencia (id, clave, materia_id, descripcion) FROM stdin;
8	jjj	4	j
\.


--
-- Data for Name: t_rel_ut_practica; Type: TABLE DATA; Schema: public; Owner: vive
--

COPY public.t_rel_ut_practica (id, id_practica_id, id_ut_id) FROM stdin;
10	7	9
\.


--
-- Data for Name: t_unidad_tematica; Type: TABLE DATA; Schema: public; Owner: vive
--

COPY public.t_unidad_tematica (id, estrategia_aprendizaje, evaluacion_aprendizaje, id_contenido_id, materia_id) FROM stdin;
9	j	j	6	4
\.


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: vive
--

SELECT pg_catalog.setval('public.hibernate_sequence', 10, true);


--
-- Name: t_comite_revisor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vive
--

SELECT pg_catalog.setval('public.t_comite_revisor_id_seq', 1, false);


--
-- Name: t_contenido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vive
--

SELECT pg_catalog.setval('public.t_contenido_id_seq', 1, false);


--
-- Name: t_encabezado_basico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vive
--

SELECT pg_catalog.setval('public.t_encabezado_basico_id_seq', 1, false);


--
-- Name: t_evaluacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vive
--

SELECT pg_catalog.setval('public.t_evaluacion_id_seq', 1, false);


--
-- Name: t_materia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vive
--

SELECT pg_catalog.setval('public.t_materia_id_seq', 1, false);


--
-- Name: t_perfil_docente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vive
--

SELECT pg_catalog.setval('public.t_perfil_docente_id_seq', 1, false);


--
-- Name: t_practica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vive
--

SELECT pg_catalog.setval('public.t_practica_id_seq', 1, false);


--
-- Name: t_referencia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vive
--

SELECT pg_catalog.setval('public.t_referencia_id_seq', 1, false);


--
-- Name: t_rel_ut_practica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vive
--

SELECT pg_catalog.setval('public.t_rel_ut_practica_id_seq', 1, false);


--
-- Name: t_unidad_tematica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vive
--

SELECT pg_catalog.setval('public.t_unidad_tematica_id_seq', 1, false);


--
-- Name: t_comite_revisor t_comite_revisor_pkey; Type: CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_comite_revisor
    ADD CONSTRAINT t_comite_revisor_pkey PRIMARY KEY (id);


--
-- Name: t_contenido t_contenido_pkey; Type: CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_contenido
    ADD CONSTRAINT t_contenido_pkey PRIMARY KEY (id);


--
-- Name: t_encabezado_basico t_encabezado_basico_pkey; Type: CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_encabezado_basico
    ADD CONSTRAINT t_encabezado_basico_pkey PRIMARY KEY (id);


--
-- Name: t_evaluacion t_evaluacion_pkey; Type: CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_evaluacion
    ADD CONSTRAINT t_evaluacion_pkey PRIMARY KEY (id);


--
-- Name: t_materia t_materia_pkey; Type: CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_materia
    ADD CONSTRAINT t_materia_pkey PRIMARY KEY (id);


--
-- Name: t_perfil_docente t_perfil_docente_pkey; Type: CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_perfil_docente
    ADD CONSTRAINT t_perfil_docente_pkey PRIMARY KEY (id);


--
-- Name: t_practica t_practica_pkey; Type: CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_practica
    ADD CONSTRAINT t_practica_pkey PRIMARY KEY (id);


--
-- Name: t_referencia t_referencia_pkey; Type: CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_referencia
    ADD CONSTRAINT t_referencia_pkey PRIMARY KEY (id);


--
-- Name: t_rel_ut_practica t_rel_ut_practica_pkey; Type: CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_rel_ut_practica
    ADD CONSTRAINT t_rel_ut_practica_pkey PRIMARY KEY (id);


--
-- Name: t_unidad_tematica t_unidad_tematica_pkey; Type: CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_unidad_tematica
    ADD CONSTRAINT t_unidad_tematica_pkey PRIMARY KEY (id);


--
-- Name: t_encabezado_basico_materia_id_01b6ca70; Type: INDEX; Schema: public; Owner: vive
--

CREATE INDEX t_encabezado_basico_materia_id_01b6ca70 ON public.t_encabezado_basico USING btree (materia_id);


--
-- Name: t_materia_id_comite_id_78000f76; Type: INDEX; Schema: public; Owner: vive
--

CREATE INDEX t_materia_id_comite_id_78000f76 ON public.t_materia USING btree (id_comite_id);


--
-- Name: t_materia_id_docente_id_b47ca061; Type: INDEX; Schema: public; Owner: vive
--

CREATE INDEX t_materia_id_docente_id_b47ca061 ON public.t_materia USING btree (id_docente_id);


--
-- Name: t_materia_id_eval_id_5b425d13; Type: INDEX; Schema: public; Owner: vive
--

CREATE INDEX t_materia_id_eval_id_5b425d13 ON public.t_materia USING btree (id_eval_id);


--
-- Name: t_referencia_materia_id_84f976aa; Type: INDEX; Schema: public; Owner: vive
--

CREATE INDEX t_referencia_materia_id_84f976aa ON public.t_referencia USING btree (materia_id);


--
-- Name: t_rel_ut_practica_id_practica_id_d5989744; Type: INDEX; Schema: public; Owner: vive
--

CREATE INDEX t_rel_ut_practica_id_practica_id_d5989744 ON public.t_rel_ut_practica USING btree (id_practica_id);


--
-- Name: t_rel_ut_practica_id_ut_id_98f92947; Type: INDEX; Schema: public; Owner: vive
--

CREATE INDEX t_rel_ut_practica_id_ut_id_98f92947 ON public.t_rel_ut_practica USING btree (id_ut_id);


--
-- Name: t_unidad_tematica_id_contenido_id_56372d8e; Type: INDEX; Schema: public; Owner: vive
--

CREATE INDEX t_unidad_tematica_id_contenido_id_56372d8e ON public.t_unidad_tematica USING btree (id_contenido_id);


--
-- Name: t_unidad_tematica_materia_id_1d20d628; Type: INDEX; Schema: public; Owner: vive
--

CREATE INDEX t_unidad_tematica_materia_id_1d20d628 ON public.t_unidad_tematica USING btree (materia_id);


--
-- Name: t_encabezado_basico t_encabezado_basico_materia_id_01b6ca70_fk_t_materia_id; Type: FK CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_encabezado_basico
    ADD CONSTRAINT t_encabezado_basico_materia_id_01b6ca70_fk_t_materia_id FOREIGN KEY (materia_id) REFERENCES public.t_materia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: t_materia t_materia_id_comite_id_78000f76_fk_t_comite_revisor_id; Type: FK CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_materia
    ADD CONSTRAINT t_materia_id_comite_id_78000f76_fk_t_comite_revisor_id FOREIGN KEY (id_comite_id) REFERENCES public.t_comite_revisor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: t_materia t_materia_id_docente_id_b47ca061_fk_t_perfil_docente_id; Type: FK CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_materia
    ADD CONSTRAINT t_materia_id_docente_id_b47ca061_fk_t_perfil_docente_id FOREIGN KEY (id_docente_id) REFERENCES public.t_perfil_docente(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: t_materia t_materia_id_eval_id_5b425d13_fk_t_evaluacion_id; Type: FK CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_materia
    ADD CONSTRAINT t_materia_id_eval_id_5b425d13_fk_t_evaluacion_id FOREIGN KEY (id_eval_id) REFERENCES public.t_evaluacion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: t_referencia t_referencia_materia_id_84f976aa_fk_t_materia_id; Type: FK CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_referencia
    ADD CONSTRAINT t_referencia_materia_id_84f976aa_fk_t_materia_id FOREIGN KEY (materia_id) REFERENCES public.t_materia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: t_rel_ut_practica t_rel_ut_practica_id_practica_id_d5989744_fk_t_practica_id; Type: FK CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_rel_ut_practica
    ADD CONSTRAINT t_rel_ut_practica_id_practica_id_d5989744_fk_t_practica_id FOREIGN KEY (id_practica_id) REFERENCES public.t_practica(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: t_rel_ut_practica t_rel_ut_practica_id_ut_id_98f92947_fk_t_unidad_tematica_id; Type: FK CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_rel_ut_practica
    ADD CONSTRAINT t_rel_ut_practica_id_ut_id_98f92947_fk_t_unidad_tematica_id FOREIGN KEY (id_ut_id) REFERENCES public.t_unidad_tematica(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: t_unidad_tematica t_unidad_tematica_id_contenido_id_56372d8e_fk_t_contenido_id; Type: FK CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_unidad_tematica
    ADD CONSTRAINT t_unidad_tematica_id_contenido_id_56372d8e_fk_t_contenido_id FOREIGN KEY (id_contenido_id) REFERENCES public.t_contenido(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: t_unidad_tematica t_unidad_tematica_materia_id_1d20d628_fk_t_materia_id; Type: FK CONSTRAINT; Schema: public; Owner: vive
--

ALTER TABLE ONLY public.t_unidad_tematica
    ADD CONSTRAINT t_unidad_tematica_materia_id_1d20d628_fk_t_materia_id FOREIGN KEY (materia_id) REFERENCES public.t_materia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

