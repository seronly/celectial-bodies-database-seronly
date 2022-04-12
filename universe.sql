--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(30) NOT NULL,
    description text,
    galaxy_types character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(4,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: helping_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.helping_table (
    helping_table_id integer NOT NULL,
    name character varying(30),
    num1 integer NOT NULL,
    num2 integer NOT NULL
);


ALTER TABLE public.helping_table OWNER TO freecodecamp;

--
-- Name: helping_table_help_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.helping_table_help_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.helping_table_help_id_seq OWNER TO freecodecamp;

--
-- Name: helping_table_help_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.helping_table_help_id_seq OWNED BY public.helping_table.helping_table_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(4,1) NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(4,1) NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(4,1) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: helping_table helping_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.helping_table ALTER COLUMN helping_table_id SET DEFAULT nextval('public.helping_table_help_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkiy Way', 'Our galaxy where we live', 'SB', 155, 0.0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Idk', 'Sa', 12, 12.2);
INSERT INTO public.galaxy VALUES (3, 'Another 1', 'l', 'Ssl', 142, 123.4);
INSERT INTO public.galaxy VALUES (4, 'Another 2', 'lll', 'ssd', 122, 213.2);
INSERT INTO public.galaxy VALUES (5, 'Another 3', 'l2l ssad sad', 's3', 421, 0.9);
INSERT INTO public.galaxy VALUES (6, 'Another 4', 'SSSS', 'S2B', 155, 110.0);


--
-- Data for Name: helping_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.helping_table VALUES (1, 'help1', 1, 1);
INSERT INTO public.helping_table VALUES (2, 'help2', 2, 2);
INSERT INTO public.helping_table VALUES (3, 'help3', 3, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth', 'Our planet', true, true, 123, 211.3, 1);
INSERT INTO public.moon VALUES (2, 'Mars', 'Elon planet', true, true, 1223, 124.0, 1);
INSERT INTO public.moon VALUES (3, 'AndrMoon s planemoo', 'Idk', true, true, 213, 212.2, 2);
INSERT INTO public.moon VALUES (4, ' moonAndromeda s planet 2', 'Idk', true, true, 2333, 412.0, 2);
INSERT INTO public.moon VALUES (5, 'Another 1 planet 1', 'sad', true, true, 124, 111.2, 3);
INSERT INTO public.moon VALUES (6, 'Another 1 planet 2', 'sss', true, false, 222, 412.0, 4);
INSERT INTO public.moon VALUES (7, 'Another 2 planet 1', 'ddd', true, true, 412, 22.0, 5);
INSERT INTO public.moon VALUES (8, 'Another 2 planet 2', 'sdasd', false, false, 2421, 12.0, 6);
INSERT INTO public.moon VALUES (9, 'Another 3 planet 1', 'sss', false, true, 12, 2.0, 7);
INSERT INTO public.moon VALUES (10, 'Another 3 planet 2', 'sdassdd', true, false, 124, 21.0, 8);
INSERT INTO public.moon VALUES (11, 'Another 4 planet 1', 'waf1', true, true, 122, 429.0, 6);
INSERT INTO public.moon VALUES (12, 'Another 4 planet 2', 'sdasdasd', true, true, 1222, 24.0, 6);
INSERT INTO public.moon VALUES (13, 'Moon 13', '13', true, true, 123, 22.0, 7);
INSERT INTO public.moon VALUES (14, 'Moon 14', '14', true, false, 2124, 12.0, 7);
INSERT INTO public.moon VALUES (15, 'Moon 15', '15', false, false, 12412, 421.0, 8);
INSERT INTO public.moon VALUES (16, 'Moon 16', '16', false, true, 1241, 412.2, 8);
INSERT INTO public.moon VALUES (17, 'Moon 17', '17', true, true, 52, 21.0, 9);
INSERT INTO public.moon VALUES (18, 'Moon 18', '18', true, true, 22, 87.0, 10);
INSERT INTO public.moon VALUES (19, 'Moon 19', '19', false, false, 872, 782.0, 11);
INSERT INTO public.moon VALUES (20, 'Moon 20', '20', true, true, 765, 432.0, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Our planet', true, true, 123, 211.3, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Elon planet', true, true, 1223, 124.0, 1);
INSERT INTO public.planet VALUES (3, 'Andromeda s planet 1', 'Idk', true, true, 213, 212.2, 2);
INSERT INTO public.planet VALUES (4, 'Andromeda s planet 2', 'Idk', true, true, 333, 412.0, 2);
INSERT INTO public.planet VALUES (5, 'Another 1 planet 1', 'sad', true, true, 124, 111.2, 3);
INSERT INTO public.planet VALUES (6, 'Another 1 planet 2', 'sss', true, false, 222, 412.0, 3);
INSERT INTO public.planet VALUES (7, 'Another 2 planet 1', 'ddd', true, true, 412, 22.0, 4);
INSERT INTO public.planet VALUES (8, 'Another 2 planet 2', 'sdasd', false, false, 2421, 12.0, 4);
INSERT INTO public.planet VALUES (9, 'Another 3 planet 1', 'sss', false, true, 12, 2.0, 5);
INSERT INTO public.planet VALUES (10, 'Another 3 planet 2', 'sdassdd', true, false, 124, 21.0, 5);
INSERT INTO public.planet VALUES (11, 'Another 4 planet 1', 'waf1', true, true, 122, 421.0, 6);
INSERT INTO public.planet VALUES (12, 'Another 4 planet 2', 'sdasdasd', true, true, 1222, 124.0, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our star', true, true, 123, 211.3, 1);
INSERT INTO public.star VALUES (2, 'Andromeda s star', 'Idk', true, true, 213, 212.2, 2);
INSERT INTO public.star VALUES (3, 'Another 1 star', 'sad', true, true, 124, 111.2, 3);
INSERT INTO public.star VALUES (4, 'Another 2 star', 'Our star', true, true, 123, 211.3, 4);
INSERT INTO public.star VALUES (5, 'Another 3 star', 'Idk', true, true, 213, 212.2, 5);
INSERT INTO public.star VALUES (6, 'Another 4 star', 'sad', true, true, 124, 111.2, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: helping_table_help_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.helping_table_help_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (name);


--
-- Name: helping_table helping_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.helping_table
    ADD CONSTRAINT helping_table_name_key UNIQUE (name);


--
-- Name: helping_table helping_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.helping_table
    ADD CONSTRAINT helping_table_pkey PRIMARY KEY (helping_table_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (name);


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

