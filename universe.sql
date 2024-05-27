--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: fuenf; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fuenf (
    fuenf_id integer NOT NULL,
    name character varying(20),
    number integer,
    numbertwo integer NOT NULL
);


ALTER TABLE public.fuenf OWNER TO freecodecamp;

--
-- Name: fuenf_fuenf_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fuenf_fuenf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fuenf_fuenf_id_seq OWNER TO freecodecamp;

--
-- Name: fuenf_fuenf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fuenf_fuenf_id_seq OWNED BY public.fuenf.fuenf_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age integer NOT NULL,
    habitable boolean,
    description text,
    name character varying(20),
    galaxy_number integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_number_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_number_seq OWNED BY public.galaxy.galaxy_number;


--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    name character varying(20),
    moonname integer NOT NULL,
    serialnumber integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_moonname_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moonname_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moonname_seq OWNER TO freecodecamp;

--
-- Name: moon_moonname_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moonname_seq OWNED BY public.moon.moonname;


--
-- Name: moon_serialnumber_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_serialnumber_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_serialnumber_seq OWNER TO freecodecamp;

--
-- Name: moon_serialnumber_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_serialnumber_seq OWNED BY public.moon.serialnumber;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    population integer,
    habitable boolean,
    name character varying(20),
    planetname integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_planetname_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planetname_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planetname_seq OWNER TO freecodecamp;

--
-- Name: planet_planetname_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planetname_seq OWNED BY public.planet.planetname;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    weight numeric,
    name character varying(20),
    starname integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: star_starname_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_starname_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_starname_seq OWNER TO freecodecamp;

--
-- Name: star_starname_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_starname_seq OWNED BY public.star.starname;


--
-- Name: fuenf fuenf_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fuenf ALTER COLUMN fuenf_id SET DEFAULT nextval('public.fuenf_fuenf_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: galaxy galaxy_number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_number SET DEFAULT nextval('public.galaxy_galaxy_number_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: moon moonname; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moonname SET DEFAULT nextval('public.moon_moonname_seq'::regclass);


--
-- Name: moon serialnumber; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN serialnumber SET DEFAULT nextval('public.moon_serialnumber_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: planet planetname; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planetname SET DEFAULT nextval('public.planet_planetname_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: star starname; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN starname SET DEFAULT nextval('public.star_starname_seq'::regclass);


--
-- Data for Name: fuenf; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fuenf VALUES (1, 'a', 5, 8);
INSERT INTO public.fuenf VALUES (3, 'b', 5, 7);
INSERT INTO public.fuenf VALUES (4, 'c', 5, 7);
INSERT INTO public.fuenf VALUES (5, 'd', 5, 7);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 500, true, 'abc', 'A', 1);
INSERT INTO public.galaxy VALUES (2, 500, true, 'abc', 'B', 2);
INSERT INTO public.galaxy VALUES (3, 500, true, 'abc', 'C', 3);
INSERT INTO public.galaxy VALUES (4, 500, true, 'abc', 'D', 4);
INSERT INTO public.galaxy VALUES (5, 500, true, 'abc', 'E', 5);
INSERT INTO public.galaxy VALUES (6, 500, true, 'abc', 'F', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'A', 1, 1);
INSERT INTO public.moon VALUES (2, 1, 'B', 2, 2);
INSERT INTO public.moon VALUES (3, 1, 'C', 3, 3);
INSERT INTO public.moon VALUES (4, 1, 'D', 4, 4);
INSERT INTO public.moon VALUES (5, 1, 'E', 5, 5);
INSERT INTO public.moon VALUES (6, 1, 'F', 6, 6);
INSERT INTO public.moon VALUES (7, 1, 'G', 7, 7);
INSERT INTO public.moon VALUES (8, 2, 'A', 8, 8);
INSERT INTO public.moon VALUES (9, 3, 'A', 9, 9);
INSERT INTO public.moon VALUES (10, 4, 'A', 10, 10);
INSERT INTO public.moon VALUES (11, 5, 'A', 11, 11);
INSERT INTO public.moon VALUES (12, 5, 'A', 12, 12);
INSERT INTO public.moon VALUES (13, 6, 'A', 13, 13);
INSERT INTO public.moon VALUES (14, 7, 'A', 14, 14);
INSERT INTO public.moon VALUES (15, 8, 'A', 15, 15);
INSERT INTO public.moon VALUES (16, 9, 'A', 16, 16);
INSERT INTO public.moon VALUES (17, 10, 'A', 17, 17);
INSERT INTO public.moon VALUES (18, 11, 'A', 18, 18);
INSERT INTO public.moon VALUES (19, 12, 'A', 19, 19);
INSERT INTO public.moon VALUES (20, 12, 'B', 20, 20);
INSERT INTO public.moon VALUES (21, 12, 'C', 21, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 250, true, 'A', 1);
INSERT INTO public.planet VALUES (2, 2, 250, true, 'A', 2);
INSERT INTO public.planet VALUES (3, 3, 250, true, 'A', 3);
INSERT INTO public.planet VALUES (4, 4, 250, true, 'A', 4);
INSERT INTO public.planet VALUES (5, 5, 250, true, 'A', 5);
INSERT INTO public.planet VALUES (6, 6, 250, true, 'A', 6);
INSERT INTO public.planet VALUES (7, 1, 250, true, 'B', 7);
INSERT INTO public.planet VALUES (8, 2, 250, true, 'B', 8);
INSERT INTO public.planet VALUES (9, 3, 250, true, 'B', 9);
INSERT INTO public.planet VALUES (10, 4, 250, true, 'B', 10);
INSERT INTO public.planet VALUES (11, 5, 250, true, 'B', 11);
INSERT INTO public.planet VALUES (12, 6, 250, true, 'B', 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 500, 'A', 1);
INSERT INTO public.star VALUES (2, 2, 500, 'A', 2);
INSERT INTO public.star VALUES (3, 3, 500, 'A', 3);
INSERT INTO public.star VALUES (4, 4, 500, 'A', 4);
INSERT INTO public.star VALUES (5, 5, 500, 'A', 5);
INSERT INTO public.star VALUES (6, 6, 500, 'A', 6);


--
-- Name: fuenf_fuenf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fuenf_fuenf_id_seq', 5, true);


--
-- Name: galaxy_galaxy_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_number_seq', 6, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: moon_moonname_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moonname_seq', 21, true);


--
-- Name: moon_serialnumber_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_serialnumber_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: planet_planetname_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planetname_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: star_starname_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_starname_seq', 6, true);


--
-- Name: fuenf fuenf_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fuenf
    ADD CONSTRAINT fuenf_name_key UNIQUE (name);


--
-- Name: fuenf fuenf_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fuenf
    ADD CONSTRAINT fuenf_pkey PRIMARY KEY (fuenf_id);


--
-- Name: galaxy galaxy_galaxy_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_number_key UNIQUE (galaxy_number);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moonname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moonname_key UNIQUE (moonname);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planetname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planetname_key UNIQUE (planetname);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_starname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_starname_key UNIQUE (starname);


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

