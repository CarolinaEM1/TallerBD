--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cardiovascular; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.cardiovascular (
    id_revision integer NOT NULL,
    dolor boolean,
    esforzarse boolean,
    desmayos boolean,
    inflamacion boolean
);


ALTER TABLE public.cardiovascular OWNER TO doctor;

--
-- Name: constitucional; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.constitucional (
    id_constitucional integer NOT NULL,
    id_revision integer NOT NULL,
    fiebres_recurrentes boolean,
    perdida_peso boolean,
    cansancio boolean,
    debilidad_cuerpo boolean,
    intolerancia boolean
);


ALTER TABLE public.constitucional OWNER TO doctor;

--
-- Name: constitucional_id_constitucional_seq; Type: SEQUENCE; Schema: public; Owner: doctor
--

CREATE SEQUENCE public.constitucional_id_constitucional_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constitucional_id_constitucional_seq OWNER TO doctor;

--
-- Name: constitucional_id_constitucional_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doctor
--

ALTER SEQUENCE public.constitucional_id_constitucional_seq OWNED BY public.constitucional.id_constitucional;


--
-- Name: embarazos; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.embarazos (
    id_revision integer NOT NULL,
    numero_embarazos integer NOT NULL,
    hijos_vivos integer NOT NULL,
    perdidas integer NOT NULL,
    abortos integer NOT NULL,
    metodo_anticonceptivo character varying(100) NOT NULL
);


ALTER TABLE public.embarazos OWNER TO doctor;

--
-- Name: endocrino; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.endocrino (
    id_revision integer NOT NULL,
    tiroides boolean,
    cambio_talla boolean
);


ALTER TABLE public.endocrino OWNER TO doctor;

--
-- Name: gastrointestinal; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.gastrointestinal (
    id_revision integer NOT NULL,
    acidez boolean,
    nauseas boolean,
    enfermedad boolean,
    sindrome boolean,
    sangre boolean
);


ALTER TABLE public.gastrointestinal OWNER TO doctor;

--
-- Name: hematologico; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.hematologico (
    id_revision integer NOT NULL,
    inflamacion boolean,
    tratamiento boolean,
    tratamiento_sangre character varying(100),
    sangrado boolean,
    sangrado_nasal boolean,
    moretones boolean
);


ALTER TABLE public.hematologico OWNER TO doctor;

--
-- Name: historia_familiar; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.historia_familiar (
    id_historia_familiar integer NOT NULL,
    id_paciente integer NOT NULL,
    enfermedades text
);


ALTER TABLE public.historia_familiar OWNER TO doctor;

--
-- Name: historia_familiar_id_historia_familiar_seq; Type: SEQUENCE; Schema: public; Owner: doctor
--

CREATE SEQUENCE public.historia_familiar_id_historia_familiar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.historia_familiar_id_historia_familiar_seq OWNER TO doctor;

--
-- Name: historia_familiar_id_historia_familiar_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doctor
--

ALTER SEQUENCE public.historia_familiar_id_historia_familiar_seq OWNED BY public.historia_familiar.id_historia_familiar;


--
-- Name: historia_social; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.historia_social (
    id_historia_social integer NOT NULL,
    id_paciente integer NOT NULL,
    consumo_tabaco boolean,
    consumo_alcohol boolean,
    consumo_drogas boolean,
    empleo character varying(255),
    discapacidad boolean
);


ALTER TABLE public.historia_social OWNER TO doctor;

--
-- Name: historia_social_id_historia_social_seq; Type: SEQUENCE; Schema: public; Owner: doctor
--

CREATE SEQUENCE public.historia_social_id_historia_social_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.historia_social_id_historia_social_seq OWNER TO doctor;

--
-- Name: historia_social_id_historia_social_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doctor
--

ALTER SEQUENCE public.historia_social_id_historia_social_seq OWNED BY public.historia_social.id_historia_social;


--
-- Name: historial_medico; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.historial_medico (
    id_historial integer NOT NULL,
    id_visita integer NOT NULL,
    problemas_actuales text,
    hospitalizaciones text,
    fracturas text,
    lesiones text,
    hepatitis_b boolean,
    hepatitis_c boolean,
    vih boolean,
    cirugias_significativas text
);


ALTER TABLE public.historial_medico OWNER TO doctor;

--
-- Name: historial_medico_id_historial_seq; Type: SEQUENCE; Schema: public; Owner: doctor
--

CREATE SEQUENCE public.historial_medico_id_historial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.historial_medico_id_historial_seq OWNER TO doctor;

--
-- Name: historial_medico_id_historial_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doctor
--

ALTER SEQUENCE public.historial_medico_id_historial_seq OWNED BY public.historial_medico.id_historial;


--
-- Name: medicamentos; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.medicamentos (
    id_medicamento integer NOT NULL,
    id_paciente integer NOT NULL,
    nombre_medicamento character varying(100) NOT NULL,
    alergias_medicamentos text,
    dosis character varying(100) NOT NULL,
    frecuencia character varying(100) NOT NULL,
    suplemento_natural character varying(100) NOT NULL
);


ALTER TABLE public.medicamentos OWNER TO doctor;

--
-- Name: medicamentos_id_medicamento_seq; Type: SEQUENCE; Schema: public; Owner: doctor
--

CREATE SEQUENCE public.medicamentos_id_medicamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medicamentos_id_medicamento_seq OWNER TO doctor;

--
-- Name: medicamentos_id_medicamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doctor
--

ALTER SEQUENCE public.medicamentos_id_medicamento_seq OWNED BY public.medicamentos.id_medicamento;


--
-- Name: musculoesqueletal; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.musculoesqueletal (
    id_revision integer NOT NULL,
    dolor boolean,
    dolor_articulaciones boolean,
    articulaciones_dolor character varying(200),
    dolores_musculares boolean,
    musculares_dolores character varying(200),
    rigidez boolean,
    rigidez_corporal character varying(200),
    inflamacion boolean,
    inflamacion_arti character varying(200),
    dedos boolean
);


ALTER TABLE public.musculoesqueletal OWNER TO doctor;

--
-- Name: neurologico; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.neurologico (
    id_revision integer NOT NULL,
    dolor_cabeza boolean,
    convulsiones boolean,
    entumecimiento boolean,
    entumecimiento_parte character varying(200),
    ardor boolean,
    ardor_partes character varying(200),
    hormigueo boolean,
    sensacion_hormigueo character varying(100),
    debilidad boolean,
    debilidad_cuerpo character varying(100)
);


ALTER TABLE public.neurologico OWNER TO doctor;

--
-- Name: oidos_nariz_garganta; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.oidos_nariz_garganta (
    id_revision integer NOT NULL,
    resequedad boolean,
    ulceras boolean,
    ronquera boolean,
    perdida_audicion boolean
);


ALTER TABLE public.oidos_nariz_garganta OWNER TO doctor;

--
-- Name: ojos; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.ojos (
    id_revision integer NOT NULL,
    enrojeciemiento boolean,
    dolor boolean,
    resequedad boolean,
    cambios_recientes boolean
);


ALTER TABLE public.ojos OWNER TO doctor;

--
-- Name: paciente; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.paciente (
    id_paciente integer NOT NULL,
    nombre character varying(100) NOT NULL,
    primer_apellido character varying(100) NOT NULL,
    segundo_apellido character varying(100) NOT NULL,
    fecha_nacimiento date,
    contacto character varying(255)
);


ALTER TABLE public.paciente OWNER TO doctor;

--
-- Name: paciente_id_paciente_seq; Type: SEQUENCE; Schema: public; Owner: doctor
--

CREATE SEQUENCE public.paciente_id_paciente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.paciente_id_paciente_seq OWNER TO doctor;

--
-- Name: paciente_id_paciente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doctor
--

ALTER SEQUENCE public.paciente_id_paciente_seq OWNED BY public.paciente.id_paciente;


--
-- Name: piel; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.piel (
    id_revision integer NOT NULL,
    cambios boolean,
    soriasis boolean,
    erupciones boolean,
    erupciones_cutaneas character varying(100),
    picazon boolean,
    exposicion boolean,
    "cambios_uñas" boolean,
    dedos boolean,
    perdida_cabello boolean
);


ALTER TABLE public.piel OWNER TO doctor;

--
-- Name: psiquiatrico; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.psiquiatrico (
    id_revision integer NOT NULL,
    depresion boolean,
    ansiedad boolean,
    confusion boolean,
    trastornos boolean,
    "trastorno_sueño" character varying(100),
    problemas_dormir boolean,
    problemas_mantenerse_dormido boolean
);


ALTER TABLE public.psiquiatrico OWNER TO doctor;

--
-- Name: respiratorio; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.respiratorio (
    id_revision integer NOT NULL,
    dolor_pecho boolean,
    respiracion boolean,
    tos boolean,
    sibilancia boolean,
    ronquidos boolean,
    pulmonia boolean,
    asma boolean
);


ALTER TABLE public.respiratorio OWNER TO doctor;

--
-- Name: revision_sistemas; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.revision_sistemas (
    id_revision integer NOT NULL,
    id_visita integer NOT NULL
);


ALTER TABLE public.revision_sistemas OWNER TO doctor;

--
-- Name: revision_sistemas_id_revision_seq; Type: SEQUENCE; Schema: public; Owner: doctor
--

CREATE SEQUENCE public.revision_sistemas_id_revision_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.revision_sistemas_id_revision_seq OWNER TO doctor;

--
-- Name: revision_sistemas_id_revision_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doctor
--

ALTER SEQUENCE public.revision_sistemas_id_revision_seq OWNED BY public.revision_sistemas.id_revision;


--
-- Name: urinario; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.urinario (
    id_revision integer NOT NULL,
    dolor boolean,
    sangre boolean,
    calculos boolean,
    infecciones boolean,
    ulceras boolean
);


ALTER TABLE public.urinario OWNER TO doctor;

--
-- Name: visita; Type: TABLE; Schema: public; Owner: doctor
--

CREATE TABLE public.visita (
    id_visita integer NOT NULL,
    id_paciente integer NOT NULL,
    fecha_visita date,
    motivo character varying(255)
);


ALTER TABLE public.visita OWNER TO doctor;

--
-- Name: visita_id_visita_seq; Type: SEQUENCE; Schema: public; Owner: doctor
--

CREATE SEQUENCE public.visita_id_visita_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visita_id_visita_seq OWNER TO doctor;

--
-- Name: visita_id_visita_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doctor
--

ALTER SEQUENCE public.visita_id_visita_seq OWNED BY public.visita.id_visita;


--
-- Name: constitucional id_constitucional; Type: DEFAULT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.constitucional ALTER COLUMN id_constitucional SET DEFAULT nextval('public.constitucional_id_constitucional_seq'::regclass);


--
-- Name: historia_familiar id_historia_familiar; Type: DEFAULT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.historia_familiar ALTER COLUMN id_historia_familiar SET DEFAULT nextval('public.historia_familiar_id_historia_familiar_seq'::regclass);


--
-- Name: historia_social id_historia_social; Type: DEFAULT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.historia_social ALTER COLUMN id_historia_social SET DEFAULT nextval('public.historia_social_id_historia_social_seq'::regclass);


--
-- Name: historial_medico id_historial; Type: DEFAULT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.historial_medico ALTER COLUMN id_historial SET DEFAULT nextval('public.historial_medico_id_historial_seq'::regclass);


--
-- Name: medicamentos id_medicamento; Type: DEFAULT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.medicamentos ALTER COLUMN id_medicamento SET DEFAULT nextval('public.medicamentos_id_medicamento_seq'::regclass);


--
-- Name: paciente id_paciente; Type: DEFAULT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.paciente ALTER COLUMN id_paciente SET DEFAULT nextval('public.paciente_id_paciente_seq'::regclass);


--
-- Name: revision_sistemas id_revision; Type: DEFAULT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.revision_sistemas ALTER COLUMN id_revision SET DEFAULT nextval('public.revision_sistemas_id_revision_seq'::regclass);


--
-- Name: visita id_visita; Type: DEFAULT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.visita ALTER COLUMN id_visita SET DEFAULT nextval('public.visita_id_visita_seq'::regclass);


--
-- Data for Name: cardiovascular; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.cardiovascular (id_revision, dolor, esforzarse, desmayos, inflamacion) FROM stdin;
\.


--
-- Data for Name: constitucional; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.constitucional (id_constitucional, id_revision, fiebres_recurrentes, perdida_peso, cansancio, debilidad_cuerpo, intolerancia) FROM stdin;
\.


--
-- Data for Name: embarazos; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.embarazos (id_revision, numero_embarazos, hijos_vivos, perdidas, abortos, metodo_anticonceptivo) FROM stdin;
\.


--
-- Data for Name: endocrino; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.endocrino (id_revision, tiroides, cambio_talla) FROM stdin;
\.


--
-- Data for Name: gastrointestinal; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.gastrointestinal (id_revision, acidez, nauseas, enfermedad, sindrome, sangre) FROM stdin;
\.


--
-- Data for Name: hematologico; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.hematologico (id_revision, inflamacion, tratamiento, tratamiento_sangre, sangrado, sangrado_nasal, moretones) FROM stdin;
\.


--
-- Data for Name: historia_familiar; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.historia_familiar (id_historia_familiar, id_paciente, enfermedades) FROM stdin;
\.


--
-- Data for Name: historia_social; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.historia_social (id_historia_social, id_paciente, consumo_tabaco, consumo_alcohol, consumo_drogas, empleo, discapacidad) FROM stdin;
\.


--
-- Data for Name: historial_medico; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.historial_medico (id_historial, id_visita, problemas_actuales, hospitalizaciones, fracturas, lesiones, hepatitis_b, hepatitis_c, vih, cirugias_significativas) FROM stdin;
\.


--
-- Data for Name: medicamentos; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.medicamentos (id_medicamento, id_paciente, nombre_medicamento, alergias_medicamentos, dosis, frecuencia, suplemento_natural) FROM stdin;
\.


--
-- Data for Name: musculoesqueletal; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.musculoesqueletal (id_revision, dolor, dolor_articulaciones, articulaciones_dolor, dolores_musculares, musculares_dolores, rigidez, rigidez_corporal, inflamacion, inflamacion_arti, dedos) FROM stdin;
\.


--
-- Data for Name: neurologico; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.neurologico (id_revision, dolor_cabeza, convulsiones, entumecimiento, entumecimiento_parte, ardor, ardor_partes, hormigueo, sensacion_hormigueo, debilidad, debilidad_cuerpo) FROM stdin;
\.


--
-- Data for Name: oidos_nariz_garganta; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.oidos_nariz_garganta (id_revision, resequedad, ulceras, ronquera, perdida_audicion) FROM stdin;
\.


--
-- Data for Name: ojos; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.ojos (id_revision, enrojeciemiento, dolor, resequedad, cambios_recientes) FROM stdin;
\.


--
-- Data for Name: paciente; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.paciente (id_paciente, nombre, primer_apellido, segundo_apellido, fecha_nacimiento, contacto) FROM stdin;
\.


--
-- Data for Name: piel; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.piel (id_revision, cambios, soriasis, erupciones, erupciones_cutaneas, picazon, exposicion, "cambios_uñas", dedos, perdida_cabello) FROM stdin;
\.


--
-- Data for Name: psiquiatrico; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.psiquiatrico (id_revision, depresion, ansiedad, confusion, trastornos, "trastorno_sueño", problemas_dormir, problemas_mantenerse_dormido) FROM stdin;
\.


--
-- Data for Name: respiratorio; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.respiratorio (id_revision, dolor_pecho, respiracion, tos, sibilancia, ronquidos, pulmonia, asma) FROM stdin;
\.


--
-- Data for Name: revision_sistemas; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.revision_sistemas (id_revision, id_visita) FROM stdin;
\.


--
-- Data for Name: urinario; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.urinario (id_revision, dolor, sangre, calculos, infecciones, ulceras) FROM stdin;
\.


--
-- Data for Name: visita; Type: TABLE DATA; Schema: public; Owner: doctor
--

COPY public.visita (id_visita, id_paciente, fecha_visita, motivo) FROM stdin;
\.


--
-- Name: constitucional_id_constitucional_seq; Type: SEQUENCE SET; Schema: public; Owner: doctor
--

SELECT pg_catalog.setval('public.constitucional_id_constitucional_seq', 1, false);


--
-- Name: historia_familiar_id_historia_familiar_seq; Type: SEQUENCE SET; Schema: public; Owner: doctor
--

SELECT pg_catalog.setval('public.historia_familiar_id_historia_familiar_seq', 1, false);


--
-- Name: historia_social_id_historia_social_seq; Type: SEQUENCE SET; Schema: public; Owner: doctor
--

SELECT pg_catalog.setval('public.historia_social_id_historia_social_seq', 1, false);


--
-- Name: historial_medico_id_historial_seq; Type: SEQUENCE SET; Schema: public; Owner: doctor
--

SELECT pg_catalog.setval('public.historial_medico_id_historial_seq', 1, false);


--
-- Name: medicamentos_id_medicamento_seq; Type: SEQUENCE SET; Schema: public; Owner: doctor
--

SELECT pg_catalog.setval('public.medicamentos_id_medicamento_seq', 1, false);


--
-- Name: paciente_id_paciente_seq; Type: SEQUENCE SET; Schema: public; Owner: doctor
--

SELECT pg_catalog.setval('public.paciente_id_paciente_seq', 1, false);


--
-- Name: revision_sistemas_id_revision_seq; Type: SEQUENCE SET; Schema: public; Owner: doctor
--

SELECT pg_catalog.setval('public.revision_sistemas_id_revision_seq', 1, false);


--
-- Name: visita_id_visita_seq; Type: SEQUENCE SET; Schema: public; Owner: doctor
--

SELECT pg_catalog.setval('public.visita_id_visita_seq', 1, false);


--
-- Name: constitucional constitucional_pkey; Type: CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.constitucional
    ADD CONSTRAINT constitucional_pkey PRIMARY KEY (id_constitucional);


--
-- Name: historia_familiar historia_familiar_pkey; Type: CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.historia_familiar
    ADD CONSTRAINT historia_familiar_pkey PRIMARY KEY (id_historia_familiar);


--
-- Name: historia_social historia_social_pkey; Type: CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.historia_social
    ADD CONSTRAINT historia_social_pkey PRIMARY KEY (id_historia_social);


--
-- Name: historial_medico historial_medico_pkey; Type: CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.historial_medico
    ADD CONSTRAINT historial_medico_pkey PRIMARY KEY (id_historial);


--
-- Name: medicamentos medicamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.medicamentos
    ADD CONSTRAINT medicamentos_pkey PRIMARY KEY (id_medicamento);


--
-- Name: paciente paciente_pkey; Type: CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (id_paciente);


--
-- Name: revision_sistemas revision_sistemas_pkey; Type: CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.revision_sistemas
    ADD CONSTRAINT revision_sistemas_pkey PRIMARY KEY (id_revision);


--
-- Name: visita visita_pkey; Type: CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.visita
    ADD CONSTRAINT visita_pkey PRIMARY KEY (id_visita);


--
-- Name: cardiovascular cardiovascular_id_revision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.cardiovascular
    ADD CONSTRAINT cardiovascular_id_revision_fkey FOREIGN KEY (id_revision) REFERENCES public.revision_sistemas(id_revision);


--
-- Name: constitucional constitucional_id_revision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.constitucional
    ADD CONSTRAINT constitucional_id_revision_fkey FOREIGN KEY (id_revision) REFERENCES public.revision_sistemas(id_revision);


--
-- Name: embarazos embarazos_id_revision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.embarazos
    ADD CONSTRAINT embarazos_id_revision_fkey FOREIGN KEY (id_revision) REFERENCES public.revision_sistemas(id_revision);


--
-- Name: endocrino endocrino_id_revision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.endocrino
    ADD CONSTRAINT endocrino_id_revision_fkey FOREIGN KEY (id_revision) REFERENCES public.revision_sistemas(id_revision);


--
-- Name: gastrointestinal gastrointestinal_id_revision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.gastrointestinal
    ADD CONSTRAINT gastrointestinal_id_revision_fkey FOREIGN KEY (id_revision) REFERENCES public.revision_sistemas(id_revision);


--
-- Name: hematologico hematologico_id_revision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.hematologico
    ADD CONSTRAINT hematologico_id_revision_fkey FOREIGN KEY (id_revision) REFERENCES public.revision_sistemas(id_revision);


--
-- Name: historia_familiar historia_familiar_id_paciente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.historia_familiar
    ADD CONSTRAINT historia_familiar_id_paciente_fkey FOREIGN KEY (id_paciente) REFERENCES public.paciente(id_paciente);


--
-- Name: historia_social historia_social_id_paciente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.historia_social
    ADD CONSTRAINT historia_social_id_paciente_fkey FOREIGN KEY (id_paciente) REFERENCES public.paciente(id_paciente);


--
-- Name: historial_medico historial_medico_id_visita_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.historial_medico
    ADD CONSTRAINT historial_medico_id_visita_fkey FOREIGN KEY (id_visita) REFERENCES public.visita(id_visita);


--
-- Name: medicamentos medicamentos_id_paciente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.medicamentos
    ADD CONSTRAINT medicamentos_id_paciente_fkey FOREIGN KEY (id_paciente) REFERENCES public.paciente(id_paciente);


--
-- Name: musculoesqueletal musculoesqueletal_id_revision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.musculoesqueletal
    ADD CONSTRAINT musculoesqueletal_id_revision_fkey FOREIGN KEY (id_revision) REFERENCES public.revision_sistemas(id_revision);


--
-- Name: neurologico neurologico_id_revision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.neurologico
    ADD CONSTRAINT neurologico_id_revision_fkey FOREIGN KEY (id_revision) REFERENCES public.revision_sistemas(id_revision);


--
-- Name: oidos_nariz_garganta oidos_nariz_garganta_id_revision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.oidos_nariz_garganta
    ADD CONSTRAINT oidos_nariz_garganta_id_revision_fkey FOREIGN KEY (id_revision) REFERENCES public.revision_sistemas(id_revision);


--
-- Name: ojos ojos_id_revision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.ojos
    ADD CONSTRAINT ojos_id_revision_fkey FOREIGN KEY (id_revision) REFERENCES public.revision_sistemas(id_revision);


--
-- Name: piel piel_id_revision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.piel
    ADD CONSTRAINT piel_id_revision_fkey FOREIGN KEY (id_revision) REFERENCES public.revision_sistemas(id_revision);


--
-- Name: psiquiatrico psiquiatrico_id_revision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.psiquiatrico
    ADD CONSTRAINT psiquiatrico_id_revision_fkey FOREIGN KEY (id_revision) REFERENCES public.revision_sistemas(id_revision);


--
-- Name: respiratorio respiratorio_id_revision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.respiratorio
    ADD CONSTRAINT respiratorio_id_revision_fkey FOREIGN KEY (id_revision) REFERENCES public.revision_sistemas(id_revision);


--
-- Name: revision_sistemas revision_sistemas_id_visita_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.revision_sistemas
    ADD CONSTRAINT revision_sistemas_id_visita_fkey FOREIGN KEY (id_visita) REFERENCES public.visita(id_visita);


--
-- Name: urinario urinario_id_revision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.urinario
    ADD CONSTRAINT urinario_id_revision_fkey FOREIGN KEY (id_revision) REFERENCES public.revision_sistemas(id_revision);


--
-- Name: visita visita_id_paciente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: doctor
--

ALTER TABLE ONLY public.visita
    ADD CONSTRAINT visita_id_paciente_fkey FOREIGN KEY (id_paciente) REFERENCES public.paciente(id_paciente);


--
-- PostgreSQL database dump complete
--

