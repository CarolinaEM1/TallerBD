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
-- Name: area_trabajo; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.area_trabajo (
    id_area integer NOT NULL,
    nombre character varying(255) NOT NULL,
    id_datos integer NOT NULL
);


ALTER TABLE public.area_trabajo OWNER TO rh;

--
-- Name: años_experiencia; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public."años_experiencia" (
    "años" integer NOT NULL,
    id_requerimiento integer NOT NULL
);


ALTER TABLE public."años_experiencia" OWNER TO rh;

--
-- Name: candidato; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.candidato (
    id_candidato integer NOT NULL,
    id_estado integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido_materno character varying(100) NOT NULL,
    apellido_paterno character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    "contraseña" character(50),
    puesto_trabajo character varying(100) NOT NULL
);


ALTER TABLE public.candidato OWNER TO rh;

--
-- Name: ciudad; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.ciudad (
    id_ciudad integer NOT NULL,
    nombre character varying(255) NOT NULL,
    id_estado integer NOT NULL,
    id_datos integer NOT NULL
);


ALTER TABLE public.ciudad OWNER TO rh;

--
-- Name: contrato; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.contrato (
    id_contrato integer NOT NULL,
    tipo_contrato character varying(255) NOT NULL,
    id_datos integer NOT NULL
);


ALTER TABLE public.contrato OWNER TO rh;

--
-- Name: datos_oferta; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.datos_oferta (
    id_datos integer NOT NULL,
    titulo character varying(255) NOT NULL,
    descripcion text NOT NULL,
    salario_mensual smallint NOT NULL,
    fecha_contratacion date,
    vacantes integer NOT NULL
);


ALTER TABLE public.datos_oferta OWNER TO rh;

--
-- Name: datos_personales; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.datos_personales (
    id_candidato integer NOT NULL,
    fecha_nacimiento date NOT NULL,
    estado_civil character varying(50) NOT NULL,
    telefono character varying(10) NOT NULL,
    id_estado integer NOT NULL,
    id_ciudad integer NOT NULL,
    id_pais integer NOT NULL,
    genero character varying(50) NOT NULL
);


ALTER TABLE public.datos_personales OWNER TO rh;

--
-- Name: destrezas; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.destrezas (
    conocimientos character varying(100) NOT NULL,
    id_requerimiento integer NOT NULL
);


ALTER TABLE public.destrezas OWNER TO rh;

--
-- Name: estado; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.estado (
    id_estado integer NOT NULL,
    nombre character varying(255) NOT NULL,
    id_datos integer NOT NULL
);


ALTER TABLE public.estado OWNER TO rh;

--
-- Name: estudios; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.estudios (
    id_candidato integer NOT NULL,
    nivel_estudios character varying(100) NOT NULL,
    centro_educativo character varying(100) NOT NULL,
    estado character varying(50) NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL
);


ALTER TABLE public.estudios OWNER TO rh;

--
-- Name: idiomas; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.idiomas (
    idioma character varying(100) NOT NULL,
    nivel character varying(100) NOT NULL,
    id_requerimiento integer NOT NULL
);


ALTER TABLE public.idiomas OWNER TO rh;

--
-- Name: jornada_laboral; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.jornada_laboral (
    id_jornada integer NOT NULL,
    tipo_jornada character varying(255) NOT NULL,
    id_datos integer NOT NULL
);


ALTER TABLE public.jornada_laboral OWNER TO rh;

--
-- Name: oferta_publicada; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.oferta_publicada (
    id_oferta integer NOT NULL,
    oferta_destacada boolean NOT NULL,
    oferta_urgente boolean NOT NULL,
    oferta_flash boolean NOT NULL,
    ocultar_nombre boolean NOT NULL,
    mostrar_email boolean NOT NULL,
    mostrar_telefono boolean NOT NULL,
    mostrar_direccion boolean NOT NULL
);


ALTER TABLE public.oferta_publicada OWNER TO rh;

--
-- Name: pais; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.pais (
    id_pais integer NOT NULL,
    nombre character varying(255) NOT NULL,
    id_datos integer NOT NULL
);


ALTER TABLE public.pais OWNER TO rh;

--
-- Name: perfil_profesional; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.perfil_profesional (
    id_candidato integer NOT NULL,
    titulo character varying(100) NOT NULL,
    descripcion text NOT NULL,
    salario_minimo integer NOT NULL,
    viajar boolean NOT NULL,
    residencia boolean NOT NULL
);


ALTER TABLE public.perfil_profesional OWNER TO rh;

--
-- Name: postulacion; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.postulacion (
    id_candidato integer NOT NULL,
    id_datos integer NOT NULL,
    id_postulacion integer NOT NULL,
    id_requerimiento integer NOT NULL
);


ALTER TABLE public.postulacion OWNER TO rh;

--
-- Name: preguntas; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.preguntas (
    descripcion text NOT NULL,
    id_oferta integer NOT NULL,
    id_requerimiento integer NOT NULL
);


ALTER TABLE public.preguntas OWNER TO rh;

--
-- Name: reclutador; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.reclutador (
    nombre character varying(100) NOT NULL,
    id_reclutador integer NOT NULL,
    id_postulacion integer NOT NULL
);


ALTER TABLE public.reclutador OWNER TO rh;

--
-- Name: requerimiento_oferta; Type: TABLE; Schema: public; Owner: rh
--

CREATE TABLE public.requerimiento_oferta (
    id_requerimiento integer NOT NULL,
    id_datos integer NOT NULL,
    edad_minima integer NOT NULL,
    edad_maxima integer NOT NULL,
    estudios_minimos character varying(255) NOT NULL,
    licencia_conducir boolean NOT NULL,
    viajar boolean NOT NULL,
    residencia boolean NOT NULL,
    discapacidad boolean NOT NULL
);


ALTER TABLE public.requerimiento_oferta OWNER TO rh;

--
-- Data for Name: area_trabajo; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.area_trabajo (id_area, nombre, id_datos) FROM stdin;
\.


--
-- Data for Name: años_experiencia; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public."años_experiencia" ("años", id_requerimiento) FROM stdin;
\.


--
-- Data for Name: candidato; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.candidato (id_candidato, id_estado, nombre, apellido_materno, apellido_paterno, email, "contraseña", puesto_trabajo) FROM stdin;
\.


--
-- Data for Name: ciudad; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.ciudad (id_ciudad, nombre, id_estado, id_datos) FROM stdin;
\.


--
-- Data for Name: contrato; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.contrato (id_contrato, tipo_contrato, id_datos) FROM stdin;
\.


--
-- Data for Name: datos_oferta; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.datos_oferta (id_datos, titulo, descripcion, salario_mensual, fecha_contratacion, vacantes) FROM stdin;
\.


--
-- Data for Name: datos_personales; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.datos_personales (id_candidato, fecha_nacimiento, estado_civil, telefono, id_estado, id_ciudad, id_pais, genero) FROM stdin;
\.


--
-- Data for Name: destrezas; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.destrezas (conocimientos, id_requerimiento) FROM stdin;
\.


--
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.estado (id_estado, nombre, id_datos) FROM stdin;
\.


--
-- Data for Name: estudios; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.estudios (id_candidato, nivel_estudios, centro_educativo, estado, fecha_inicio, fecha_fin) FROM stdin;
\.


--
-- Data for Name: idiomas; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.idiomas (idioma, nivel, id_requerimiento) FROM stdin;
\.


--
-- Data for Name: jornada_laboral; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.jornada_laboral (id_jornada, tipo_jornada, id_datos) FROM stdin;
\.


--
-- Data for Name: oferta_publicada; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.oferta_publicada (id_oferta, oferta_destacada, oferta_urgente, oferta_flash, ocultar_nombre, mostrar_email, mostrar_telefono, mostrar_direccion) FROM stdin;
\.


--
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.pais (id_pais, nombre, id_datos) FROM stdin;
\.


--
-- Data for Name: perfil_profesional; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.perfil_profesional (id_candidato, titulo, descripcion, salario_minimo, viajar, residencia) FROM stdin;
\.


--
-- Data for Name: postulacion; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.postulacion (id_candidato, id_datos, id_postulacion, id_requerimiento) FROM stdin;
\.


--
-- Data for Name: preguntas; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.preguntas (descripcion, id_oferta, id_requerimiento) FROM stdin;
\.


--
-- Data for Name: reclutador; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.reclutador (nombre, id_reclutador, id_postulacion) FROM stdin;
\.


--
-- Data for Name: requerimiento_oferta; Type: TABLE DATA; Schema: public; Owner: rh
--

COPY public.requerimiento_oferta (id_requerimiento, id_datos, edad_minima, edad_maxima, estudios_minimos, licencia_conducir, viajar, residencia, discapacidad) FROM stdin;
\.


--
-- Name: area_trabajo area_trabajo_pkey; Type: CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.area_trabajo
    ADD CONSTRAINT area_trabajo_pkey PRIMARY KEY (id_area);


--
-- Name: candidato candidato_pkey; Type: CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.candidato
    ADD CONSTRAINT candidato_pkey PRIMARY KEY (id_candidato);


--
-- Name: ciudad ciudad_pkey; Type: CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_pkey PRIMARY KEY (id_ciudad);


--
-- Name: contrato contrato_pkey; Type: CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.contrato
    ADD CONSTRAINT contrato_pkey PRIMARY KEY (id_contrato);


--
-- Name: datos_oferta datos_oferta_pkey; Type: CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.datos_oferta
    ADD CONSTRAINT datos_oferta_pkey PRIMARY KEY (id_datos);


--
-- Name: estado estado_pkey; Type: CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id_estado);


--
-- Name: jornada_laboral jornada_laboral_pkey; Type: CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.jornada_laboral
    ADD CONSTRAINT jornada_laboral_pkey PRIMARY KEY (id_jornada);


--
-- Name: oferta_publicada oferta_publicada_pkey; Type: CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.oferta_publicada
    ADD CONSTRAINT oferta_publicada_pkey PRIMARY KEY (id_oferta);


--
-- Name: pais pais_pkey; Type: CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (id_pais);


--
-- Name: postulacion postulacion_pkey; Type: CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.postulacion
    ADD CONSTRAINT postulacion_pkey PRIMARY KEY (id_postulacion);


--
-- Name: reclutador reclutador_pkey; Type: CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.reclutador
    ADD CONSTRAINT reclutador_pkey PRIMARY KEY (id_reclutador);


--
-- Name: requerimiento_oferta requerimiento_oferta_pkey; Type: CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.requerimiento_oferta
    ADD CONSTRAINT requerimiento_oferta_pkey PRIMARY KEY (id_requerimiento);


--
-- Name: area_trabajo area_trabajo_id_datos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.area_trabajo
    ADD CONSTRAINT area_trabajo_id_datos_fkey FOREIGN KEY (id_datos) REFERENCES public.datos_oferta(id_datos);


--
-- Name: años_experiencia años_experiencia_id_requerimiento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public."años_experiencia"
    ADD CONSTRAINT "años_experiencia_id_requerimiento_fkey" FOREIGN KEY (id_requerimiento) REFERENCES public.requerimiento_oferta(id_requerimiento);


--
-- Name: candidato candidato_id_estado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.candidato
    ADD CONSTRAINT candidato_id_estado_fkey FOREIGN KEY (id_estado) REFERENCES public.estado(id_estado);


--
-- Name: ciudad ciudad_id_datos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_id_datos_fkey FOREIGN KEY (id_datos) REFERENCES public.datos_oferta(id_datos);


--
-- Name: ciudad ciudad_id_estado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_id_estado_fkey FOREIGN KEY (id_estado) REFERENCES public.estado(id_estado);


--
-- Name: contrato contrato_id_datos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.contrato
    ADD CONSTRAINT contrato_id_datos_fkey FOREIGN KEY (id_datos) REFERENCES public.datos_oferta(id_datos);


--
-- Name: datos_personales datos_personales_id_candidato_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.datos_personales
    ADD CONSTRAINT datos_personales_id_candidato_fkey FOREIGN KEY (id_candidato) REFERENCES public.candidato(id_candidato);


--
-- Name: datos_personales datos_personales_id_ciudad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.datos_personales
    ADD CONSTRAINT datos_personales_id_ciudad_fkey FOREIGN KEY (id_ciudad) REFERENCES public.ciudad(id_ciudad);


--
-- Name: datos_personales datos_personales_id_estado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.datos_personales
    ADD CONSTRAINT datos_personales_id_estado_fkey FOREIGN KEY (id_estado) REFERENCES public.estado(id_estado);


--
-- Name: datos_personales datos_personales_id_pais_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.datos_personales
    ADD CONSTRAINT datos_personales_id_pais_fkey FOREIGN KEY (id_pais) REFERENCES public.pais(id_pais);


--
-- Name: destrezas destrezas_id_requerimiento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.destrezas
    ADD CONSTRAINT destrezas_id_requerimiento_fkey FOREIGN KEY (id_requerimiento) REFERENCES public.requerimiento_oferta(id_requerimiento);


--
-- Name: estado estado_id_datos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_id_datos_fkey FOREIGN KEY (id_datos) REFERENCES public.datos_oferta(id_datos);


--
-- Name: estudios estudios_id_candidato_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.estudios
    ADD CONSTRAINT estudios_id_candidato_fkey FOREIGN KEY (id_candidato) REFERENCES public.candidato(id_candidato);


--
-- Name: idiomas idiomas_id_requerimiento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.idiomas
    ADD CONSTRAINT idiomas_id_requerimiento_fkey FOREIGN KEY (id_requerimiento) REFERENCES public.requerimiento_oferta(id_requerimiento);


--
-- Name: jornada_laboral jornada_laboral_id_datos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.jornada_laboral
    ADD CONSTRAINT jornada_laboral_id_datos_fkey FOREIGN KEY (id_datos) REFERENCES public.datos_oferta(id_datos);


--
-- Name: pais pais_id_datos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_id_datos_fkey FOREIGN KEY (id_datos) REFERENCES public.datos_oferta(id_datos);


--
-- Name: perfil_profesional perfil_profesional_id_candidato_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.perfil_profesional
    ADD CONSTRAINT perfil_profesional_id_candidato_fkey FOREIGN KEY (id_candidato) REFERENCES public.candidato(id_candidato);


--
-- Name: postulacion postulacion_id_candidato_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.postulacion
    ADD CONSTRAINT postulacion_id_candidato_fkey FOREIGN KEY (id_candidato) REFERENCES public.candidato(id_candidato);


--
-- Name: postulacion postulacion_id_datos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.postulacion
    ADD CONSTRAINT postulacion_id_datos_fkey FOREIGN KEY (id_datos) REFERENCES public.datos_oferta(id_datos);


--
-- Name: postulacion postulacion_id_requerimiento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.postulacion
    ADD CONSTRAINT postulacion_id_requerimiento_fkey FOREIGN KEY (id_requerimiento) REFERENCES public.requerimiento_oferta(id_requerimiento);


--
-- Name: preguntas preguntas_id_oferta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.preguntas
    ADD CONSTRAINT preguntas_id_oferta_fkey FOREIGN KEY (id_oferta) REFERENCES public.oferta_publicada(id_oferta);


--
-- Name: preguntas preguntas_id_requerimiento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.preguntas
    ADD CONSTRAINT preguntas_id_requerimiento_fkey FOREIGN KEY (id_requerimiento) REFERENCES public.requerimiento_oferta(id_requerimiento);


--
-- Name: reclutador reclutador_id_postulacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.reclutador
    ADD CONSTRAINT reclutador_id_postulacion_fkey FOREIGN KEY (id_postulacion) REFERENCES public.postulacion(id_postulacion);


--
-- Name: requerimiento_oferta requerimiento_oferta_id_datos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rh
--

ALTER TABLE ONLY public.requerimiento_oferta
    ADD CONSTRAINT requerimiento_oferta_id_datos_fkey FOREIGN KEY (id_datos) REFERENCES public.datos_oferta(id_datos);


--
-- PostgreSQL database dump complete
--

