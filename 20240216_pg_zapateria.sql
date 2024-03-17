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
-- Name: cliente; Type: TABLE; Schema: public; Owner: zapatero
--

CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    direccion character varying(100) NOT NULL,
    rfc character varying(8) NOT NULL
);


ALTER TABLE public.cliente OWNER TO zapatero;

--
-- Name: empleado; Type: TABLE; Schema: public; Owner: zapatero
--

CREATE TABLE public.empleado (
    id_empleado integer NOT NULL,
    nombre character varying(50) NOT NULL,
    direccion character varying(100) NOT NULL,
    curp character varying(12) NOT NULL
);


ALTER TABLE public.empleado OWNER TO zapatero;

--
-- Name: producto; Type: TABLE; Schema: public; Owner: zapatero
--

CREATE TABLE public.producto (
    id_producto integer NOT NULL,
    tipo character varying(100) NOT NULL,
    nombre character varying(100) NOT NULL,
    talla character varying(50) NOT NULL,
    existencias character varying(100) NOT NULL
);


ALTER TABLE public.producto OWNER TO zapatero;

--
-- Name: producto_ventas; Type: TABLE; Schema: public; Owner: zapatero
--

CREATE TABLE public.producto_ventas (
    id_venta smallint NOT NULL
);


ALTER TABLE public.producto_ventas OWNER TO zapatero;

--
-- Name: venta; Type: TABLE; Schema: public; Owner: zapatero
--

CREATE TABLE public.venta (
    id_venta integer NOT NULL,
    fecha date NOT NULL,
    forma_pago numeric(10,2) NOT NULL,
    total character varying(50) NOT NULL
);


ALTER TABLE public.venta OWNER TO zapatero;

--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: zapatero
--

COPY public.cliente (id_cliente, nombre, email, direccion, rfc) FROM stdin;
\.


--
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: zapatero
--

COPY public.empleado (id_empleado, nombre, direccion, curp) FROM stdin;
\.


--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: zapatero
--

COPY public.producto (id_producto, tipo, nombre, talla, existencias) FROM stdin;
\.


--
-- Data for Name: producto_ventas; Type: TABLE DATA; Schema: public; Owner: zapatero
--

COPY public.producto_ventas (id_venta) FROM stdin;
\.


--
-- Data for Name: venta; Type: TABLE DATA; Schema: public; Owner: zapatero
--

COPY public.venta (id_venta, fecha, forma_pago, total) FROM stdin;
\.


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: zapatero
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);


--
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: zapatero
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);


--
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: zapatero
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);

--
-- Name: venta venta_pkey; Type: CONSTRAINT; Schema: public; Owner: zapatero
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id_venta);


--
-- Name: producto_ventas producto_ventas_id_venta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zapatero
--

ALTER TABLE ONLY public.producto_ventas
    ADD CONSTRAINT producto_ventas_id_venta_fkey FOREIGN KEY (id_venta) REFERENCES public.venta(id_venta);


--
-- PostgreSQL database dump complete
--

