--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_size integer,
    galaxy_age integer,
    name character varying NOT NULL,
    galaxy_name_abv character(3) NOT NULL,
    stars integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_size integer,
    moon_age integer,
    name character varying NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: observer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.observer (
    observer_id numeric NOT NULL,
    observer_lab_name text,
    name character varying NOT NULL
);


ALTER TABLE public.observer OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_size integer,
    planet_age integer,
    name character varying NOT NULL,
    star_id integer,
    planet_is_habited boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_size integer,
    star_age integer,
    name character varying NOT NULL,
    star_is_alive boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1101, 55, 7000, 'SUPERGIANT ELLIPTICAL', 'SGE', 100);
INSERT INTO public.galaxy VALUES (1102, 880, 900020, 'Parades System', 'PRS', 2310);
INSERT INTO public.galaxy VALUES (19122, 22880, 31020, 'Haverz Duplantis', 'HDS', 810);
INSERT INTO public.galaxy VALUES (1900, 2324, 331, 'Jablonski Polysystem', 'JPS', 290);
INSERT INTO public.galaxy VALUES (2131, 52777, 2000, 'Subclass System AAF', 'AAF', 20000);
INSERT INTO public.galaxy VALUES (11909, 10, 2, 'Galagher Minisystem - AAD', 'AAD', 93);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (901, 3, 10, 'AC-AA', 983988);
INSERT INTO public.moon VALUES (221, 1, 3, 'ALTOMO', 312312);
INSERT INTO public.moon VALUES (222, 3, 5, 'ALMOTO', 312312);
INSERT INTO public.moon VALUES (902, 3, 10, 'ACAAB', 983988);
INSERT INTO public.moon VALUES (932, 3, 10, 'ADCAAB', 983988);
INSERT INTO public.moon VALUES (9402, 3, 10, 'ASSCAAB', 983988);
INSERT INTO public.moon VALUES (9012, 3, 10, 'AAACAAB', 983988);
INSERT INTO public.moon VALUES (96602, 3, 10, 'ARRCAAB', 983988);
INSERT INTO public.moon VALUES (91012, 3, 10, 'CCACAAB', 983988);
INSERT INTO public.moon VALUES (3333902, 3, 10, 'ADDDCAAB', 983988);
INSERT INTO public.moon VALUES (955502, 3, 10, 'QQQACAAB', 983988);
INSERT INTO public.moon VALUES (8902, 3, 10, 'GGGACAAB', 983988);
INSERT INTO public.moon VALUES (444902, 3, 10, 'ATTTCAAB', 983988);
INSERT INTO public.moon VALUES (5555902, 3, 10, 'AFFFFCAAB', 983988);
INSERT INTO public.moon VALUES (4111902, 3, 10, 'AWWWWCAAB', 983988);
INSERT INTO public.moon VALUES (882902, 3, 10, 'AQWEQCAAB', 983988);
INSERT INTO public.moon VALUES (345902, 3, 10, 'ADFGDCAAB', 983988);
INSERT INTO public.moon VALUES (3322902, 3, 10, 'ADDDFFFGGCAAB', 983988);
INSERT INTO public.moon VALUES (11902, 3, 10, 'AQWERQCAB', 983988);
INSERT INTO public.moon VALUES (3302, 3, 10, 'ADDAAB', 983988);


--
-- Data for Name: observer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.observer VALUES (55, 'Berkley Observatory', 'Adam Jablonksi');
INSERT INTO public.observer VALUES (1028, 'Caltech Astronomy', 'Mitt Galagher');
INSERT INTO public.observer VALUES (2222, 'Newark Astronomy Labs', 'Pascal Parades');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (983988, 12, 28, 'SGE A-Class AA', 1, true);
INSERT INTO public.planet VALUES (312312, 9, 20, 'VARTA-ABA', 1, false);
INSERT INTO public.planet VALUES (234755, 8, 11, 'ASDA ASMA', 114, false);
INSERT INTO public.planet VALUES (111, 3, 3, 'BIFFLE WIFFLE', 444, true);
INSERT INTO public.planet VALUES (322, 3, 3, 'HIKI WIKI', 444, false);
INSERT INTO public.planet VALUES (991, 54, 1003, 'SAMSONITE', 114, false);
INSERT INTO public.planet VALUES (990, 32, 992, 'SAMNOSITE', 114, false);
INSERT INTO public.planet VALUES (2111, 4, 9, 'HIMSA KIMSA', 444, false);
INSERT INTO public.planet VALUES (3111, 3, 1, 'JIMI WIMI', 444, false);
INSERT INTO public.planet VALUES (983000, 10, 19, 'SGE B-Class BG', 1, false);
INSERT INTO public.planet VALUES (983120, 40, 119, 'SGE A-Class AG', 1, false);
INSERT INTO public.planet VALUES (983010, 10, 19, 'SGE B-Class BH', 1, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 12, 100, 'AAA', true, 1101);
INSERT INTO public.star VALUES (114, 2, 12, 'AAFFDDA', false, 1101);
INSERT INTO public.star VALUES (11993, 2, 6, 'ALLLLKKK', true, 1101);
INSERT INTO public.star VALUES (444, 4, 100, 'SDASDASS', true, 1900);
INSERT INTO public.star VALUES (66554, 3, 3, 'DJK', true, 2131);
INSERT INTO public.star VALUES (20009, 33, 1000, 'LMONO', false, 19122);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: observer observer_observer_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.observer
    ADD CONSTRAINT observer_observer_id_key UNIQUE (observer_id);


--
-- Name: observer observer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.observer
    ADD CONSTRAINT observer_pkey PRIMARY KEY (observer_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: galaxy star_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT star_galaxy UNIQUE (galaxy_id, name);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

