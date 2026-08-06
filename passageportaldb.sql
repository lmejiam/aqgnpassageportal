--
-- PostgreSQL database dump
--

\restrict pCULbEuuHYKwHFYA3bAnqwoPQ1HepmXATedbON46JZZPe4ocS2SyaC4D2qbrLlm

-- Dumped from database version 16.14 (Ubuntu 16.14-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.14 (Ubuntu 16.14-0ubuntu0.24.04.1)

-- Started on 2026-08-06 12:32:06 PDT

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

--
-- TOC entry 3435 (class 1262 OID 24576)
-- Name: passageportaldb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE passageportaldb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE passageportaldb OWNER TO postgres;

\unrestrict pCULbEuuHYKwHFYA3bAnqwoPQ1HepmXATedbON46JZZPe4ocS2SyaC4D2qbrLlm
\connect passageportaldb
\restrict pCULbEuuHYKwHFYA3bAnqwoPQ1HepmXATedbON46JZZPe4ocS2SyaC4D2qbrLlm

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

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: sorting; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA sorting;


ALTER SCHEMA sorting OWNER TO pg_database_owner;

--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA sorting; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA sorting IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 24582)
-- Name: fish; Type: TABLE; Schema: sorting; Owner: postgres
--

CREATE TABLE sorting.fish (
    whooshh_id integer NOT NULL,
    file_id_aris text NOT NULL,
    filename1 text NOT NULL,
    filename2 text NOT NULL,
    date text NOT NULL,
    "time" text NOT NULL,
    site text NOT NULL,
    priority text NOT NULL,
    prioritygate text NOT NULL,
    speed text NOT NULL,
    length text NOT NULL,
    circumference text NOT NULL,
    weight text NOT NULL,
    gate text NOT NULL,
    outputlane text NOT NULL,
    outputlanereason text NOT NULL
);


ALTER TABLE sorting.fish OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24581)
-- Name: fish_whooshh_id_seq; Type: SEQUENCE; Schema: sorting; Owner: postgres
--

ALTER TABLE sorting.fish ALTER COLUMN whooshh_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME sorting.fish_whooshh_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3429 (class 0 OID 24582)
-- Dependencies: 216
-- Data for Name: fish; Type: TABLE DATA; Schema: sorting; Owner: postgres
--

COPY sorting.fish (whooshh_id, file_id_aris, filename1, filename2, date, "time", site, priority, prioritygate, speed, length, circumference, weight, gate, outputlane, outputlanereason) FROM stdin;
1	ARIS_20260805_001	fish_image.jpg	fish_thumbnail.jpg	2026-08-05	13:45:00	Seattle	1	A	125	450	230	3200	Gate1	Lane2	Test record
\.


--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 215
-- Name: fish_whooshh_id_seq; Type: SEQUENCE SET; Schema: sorting; Owner: postgres
--

SELECT pg_catalog.setval('sorting.fish_whooshh_id_seq', 1, true);


--
-- TOC entry 3284 (class 2606 OID 24588)
-- Name: fish fish_pkey; Type: CONSTRAINT; Schema: sorting; Owner: postgres
--

ALTER TABLE ONLY sorting.fish
    ADD CONSTRAINT fish_pkey PRIMARY KEY (whooshh_id);


-- Completed on 2026-08-06 12:32:06 PDT

--
-- PostgreSQL database dump complete
--

\unrestrict pCULbEuuHYKwHFYA3bAnqwoPQ1HepmXATedbON46JZZPe4ocS2SyaC4D2qbrLlm

