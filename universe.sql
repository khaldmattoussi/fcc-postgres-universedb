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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying NOT NULL,
    description text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years integer,
    galaxy_type character varying,
    distance_from_earth numeric
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    diameter_in_km integer,
    is_inhabited boolean NOT NULL,
    surface_material text,
    orbit_period_days integer
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
    name character varying NOT NULL,
    star_id integer NOT NULL,
    distance_from_earth numeric,
    has_life boolean NOT NULL,
    atmosphere text,
    surface_temperature numeric
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
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean NOT NULL,
    temperature numeric,
    radius numeric
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 'A prominent constellation visible in the night sky, named after a Greek mythological hunter.');
INSERT INTO public.constellation VALUES (2, 'Ursa Major', 'Also known as the Great Bear, it contains the well-known asterism, the Big Dipper.');
INSERT INTO public.constellation VALUES (3, 'Cygnus', 'Known as the Northern Cross, it is a prominent summer constellation in the northern hemisphere.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral galaxy containing the Solar System', 13000, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Largest galaxy in the Local Group', 10000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral galaxy in the constellation Triangulum', 5000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Elliptical galaxy in the Virgo Cluster', 64000, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral galaxy in the constellation Virgo', 13000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Interacting grand-design spiral galaxy', 25000, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, 3476, false, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 22, false, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 12, false, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, 5262, false, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', 5, 4800, false, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Io', 5, 3643, false, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Europa', 5, 3122, false, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 5150, false, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Rhea', 6, 1528, false, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Iapetus', 6, 1436, false, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Triton', 9, 2707, false, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Charon', 10, 1212, false, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Moon 1', 3, 100, false, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Moon 2', 3, 200, false, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Moon 3', 3, 150, false, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Moon 4', 3, 180, false, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Moon 5', 3, 250, false, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Moon 6', 3, 300, false, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Moon 7', 3, 175, false, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Moon 8', 3, 210, false, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Moon 9', 3, 325, false, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Moon 10', 3, 280, false, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Moon 11', 3, 400, false, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Moon 12', 3, 230, false, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Moon 13', 3, 265, false, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'Moon 14', 3, 150, false, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'Moon 15', 3, 175, false, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'Moon 16', 3, 200, false, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'Moon 17', 3, 275, false, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'Moon 18', 3, 320, false, NULL, NULL);
INSERT INTO public.moon VALUES (31, 'Moon 19', 3, 375, false, NULL, NULL);
INSERT INTO public.moon VALUES (32, 'Moon 20', 3, 400, false, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 77.3, false, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 38.2, false, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 0, true, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 54.6, false, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 2, 588.0, false, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 2, 1, false, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 2, 1, false, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 2, 1, false, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 3, 600, true, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Gliese 581g', 3, 20, true, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 4, 150, false, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'WASP-12b', 4, 200, false, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 4600, true, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 1, 6000, true, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 1, 6000, true, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Sirius', 1, 250, true, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 1, 6000, true, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Vega', 1, 455, true, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Betelgeuse', 1, 8000, false, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Rigel', 1, 10000, false, NULL, NULL);
INSERT INTO public.star VALUES (9, 'Antares', 1, 12000, false, NULL, NULL);
INSERT INTO public.star VALUES (10, 'Aldebaran', 1, 6250, false, NULL, NULL);
INSERT INTO public.star VALUES (11, 'Arcturus', 1, 7250, false, NULL, NULL);
INSERT INTO public.star VALUES (12, 'Spica', 1, 12600, false, NULL, NULL);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 32, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

