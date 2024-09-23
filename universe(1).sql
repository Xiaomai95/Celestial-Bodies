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
-- Name: astronaut; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronaut (
    astronaut_id integer NOT NULL,
    name character varying(30) NOT NULL,
    space_organisation text NOT NULL,
    time_spent_in_space_in_days integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.astronaut OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronaut_astronaut_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronaut_astronaut_id_seq OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronaut_astronaut_id_seq OWNED BY public.astronaut.astronaut_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text NOT NULL,
    diameter_in_light_years numeric NOT NULL,
    constellation text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

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
    name character varying(30) NOT NULL,
    planet text NOT NULL,
    orbit_time_in_days numeric NOT NULL,
    type text NOT NULL,
    planet_id integer NOT NULL
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_moons integer NOT NULL,
    has_life boolean NOT NULL,
    type text NOT NULL,
    star_id integer NOT NULL
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    bigger_than_the_sun boolean NOT NULL,
    galaxy text NOT NULL,
    type text NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: astronaut astronaut_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut ALTER COLUMN astronaut_id SET DEFAULT nextval('public.astronaut_astronaut_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: astronaut; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronaut VALUES (1, 'Alex Nova', 'NASA', 250, 1);
INSERT INTO public.astronaut VALUES (2, 'Luna Skywalker', 'ESA', 150, 2);
INSERT INTO public.astronaut VALUES (3, 'Cosmo Vega', 'Roscosmos', 500, 3);
INSERT INTO public.astronaut VALUES (4, 'Zara Star', 'NASA', 300, 4);
INSERT INTO public.astronaut VALUES (5, 'Kai Solaris', 'ISRO', 100, 5);
INSERT INTO public.astronaut VALUES (6, 'Tessa Orbit', 'NASA', 200, 6);
INSERT INTO public.astronaut VALUES (7, 'Felix Marsden', 'CNSA', 180, 7);
INSERT INTO public.astronaut VALUES (8, 'Aurora Nebula', 'SpaceX', 450, 8);
INSERT INTO public.astronaut VALUES (9, 'Orion Eclipse', 'Blue Origin', 120, 9);
INSERT INTO public.astronaut VALUES (10, 'Leo Stellar', 'NASA', 75, 10);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred Spiral', 105700, 'Sagittarius A*');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 220000, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 60000, 'Triangulum');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 76000, 'Canes Venatici');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Elliptical', 50000, 'Virgo');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Irregular', 14000, 'Dorado');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth', 27.3, 'Natural Satellite', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars', 0.3189, 'Natural Satellite', 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars', 1.263, 'Natural Satellite', 2);
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiter', 1.769, 'Natural Satellite', 3);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter', 3.551, 'Natural Satellite', 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Jupiter', 7.155, 'Natural Satellite', 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Jupiter', 16.689, 'Natural Satellite', 3);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn', 15.945, 'Natural Satellite', 4);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Saturn', 1.37, 'Natural Satellite', 4);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Saturn', 0.942, 'Natural Satellite', 4);
INSERT INTO public.moon VALUES (11, 'Betelgeuse b1', 'Betelgeuse b', 10.5, 'Exomoon', 5);
INSERT INTO public.moon VALUES (12, 'Betelgeuse c1', 'Betelgeuse c', 22.1, 'Exomoon', 6);
INSERT INTO public.moon VALUES (13, 'Rigel b1', 'Rigel b', 15.7, 'Exomoon', 7);
INSERT INTO public.moon VALUES (14, 'Proxima b1', 'Proxima b', 11.9, 'Exomoon', 9);
INSERT INTO public.moon VALUES (15, 'Alpha Centauri Bb1', 'Alpha Centauri Bb', 8.3, 'Exomoon', 10);
INSERT INTO public.moon VALUES (16, 'Andromeda b1', 'Andromeda b', 30.6, 'Exomoon', 11);
INSERT INTO public.moon VALUES (17, 'Andromeda b2', 'Andromeda b', 45.3, 'Exomoon', 11);
INSERT INTO public.moon VALUES (18, 'Andromeda c1', 'Andromeda c', 65.1, 'Exomoon', 12);
INSERT INTO public.moon VALUES (19, 'Andromeda c2', 'Andromeda c', 70.2, 'Exomoon', 12);
INSERT INTO public.moon VALUES (20, 'Andromeda c3', 'Andromeda c', 90.5, 'Exomoon', 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 2, false, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 79, false, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 83, false, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (5, 'Betelgeuse b', 0, false, 'Exoplanet', 2);
INSERT INTO public.planet VALUES (6, 'Betelgeuse c', 1, false, 'Exoplanet', 2);
INSERT INTO public.planet VALUES (7, 'Rigel b', 0, false, 'Exoplanet', 3);
INSERT INTO public.planet VALUES (8, 'Rigel c', 0, false, 'Exoplanet', 3);
INSERT INTO public.planet VALUES (9, 'Proxima b', 0, false, 'Terrestrial', 4);
INSERT INTO public.planet VALUES (10, 'Alpha Centauri Bb', 0, false, 'Terrestrial', 5);
INSERT INTO public.planet VALUES (11, 'Andromeda b', 2, false, 'Exoplanet', 6);
INSERT INTO public.planet VALUES (12, 'Andromeda c', 3, false, 'Exoplanet', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', true, 'Milky Way', 'Main Sequence', 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', true, 'Milky Way', 'Red Supergiant', 1);
INSERT INTO public.star VALUES (3, 'Rigel', true, 'Milky Way', 'Blue Supergiant', 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', false, 'Milky Way', 'Red Dwarf', 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', true, 'Milky Way', 'Main Sequence', 1);
INSERT INTO public.star VALUES (6, 'Andromeda A', true, 'Andromeda', 'Main Sequence', 2);


--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronaut_astronaut_id_seq', 1, false);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: astronaut astronaut_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_name_key UNIQUE (name);


--
-- Name: astronaut astronaut_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_pkey PRIMARY KEY (astronaut_id);


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
-- Name: astronaut astronaut_planet_visited_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_planet_visited_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

