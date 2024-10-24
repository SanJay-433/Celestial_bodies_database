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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    shape text,
    size numeric,
    age integer,
    no_of_stars integer,
    is_expanding boolean,
    has_blackhole boolean,
    description text
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
    name character varying(60) NOT NULL,
    shape text,
    size numeric,
    age integer,
    has_atmosphere boolean,
    is_habitable boolean,
    description text,
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
    name character varying(60) NOT NULL,
    shape text,
    size numeric,
    age integer,
    no_of_moons integer,
    is_dwarf boolean,
    has_rings boolean,
    description text,
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
-- Name: shapes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.shapes (
    shapes_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text
);


ALTER TABLE public.shapes OWNER TO freecodecamp;

--
-- Name: shapes_shape_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.shapes_shape_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shapes_shape_id_seq OWNER TO freecodecamp;

--
-- Name: shapes_shape_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.shapes_shape_id_seq OWNED BY public.shapes.shapes_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    shape text,
    size numeric,
    no_of_planets integer,
    is_variable boolean,
    is_neutron_star boolean,
    age integer,
    description text,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: shapes shapes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shapes ALTER COLUMN shapes_id SET DEFAULT nextval('public.shapes_shape_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 1500000000000, 13000000, 1000000, true, true, 'Our home galaxy, containing the Solar System.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2000000000000, 1000000, 1000000, true, true, 'The nearest large galaxy to the Milky Way, on a collision course with it.');
INSERT INTO public.galaxy VALUES (3, 'Sombrero Galaxy', 'Elliptical', 800000000000, 9000000, 8000000, false, true, 'Notable for its bright nucleus and prominent dust lane.');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'Spiral', 1600000000000, 1000000, 1000000, true, true, 'A famous interacting galaxy with visible spiral arms.');
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'Irregular', 27000000000, 14000000, 3000000, false, false, 'A satellite galaxy of the Milky Way, irregular in shape.');
INSERT INTO public.galaxy VALUES (6, 'Triangulum Galaxy', 'Spiral', 550000000000, 12000000, 40000000, true, false, 'The third-largest member of the Local Group of galaxies.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Spherical', 73500000000000000000000, 45000000, false, false, 'Earth only natural satellite.', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Irregular', 10600000000000000, 45000000, false, false, 'A moon of Mars, heavily cratered.', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Irregular', 1800000000000000, 4500000, false, false, 'The smaller moon of Mars.', 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Spherical', 89300000000000000000000, 4500000, false, false, 'A volcanically active moon of Jupiter.', 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Spherical', 48000000000000000000000, 4500000, true, false, 'An icy moon with a potential subsurface ocean.', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Spherical', 148000000000000000000000, 45000000, true, false, 'The largest moon in the Solar System, bigger than Mercury.', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Spherical', 108000000000000000000000, 45000000, false, false, 'A heavily cratered moon of Jupiter.', 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Spherical', 134000000000000000000000, 4500000, true, false, 'Saturn largest moon, with a thick atmosphere.', 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Spherical', 108000000000000000000, 45000000, true, false, 'An icy moon of Saturn with geysers.', 6);
INSERT INTO public.moon VALUES (10, 'Oberon', 'Spherical', 3010000000000000000000, 4500000, false, false, 'The second-largest moon of Uranus.', 7);
INSERT INTO public.moon VALUES (11, 'Triton', 'Spherical', 21400000000000000000000, 4500000, false, false, 'The largest moon of Neptune, with a retrograde orbit.', 8);
INSERT INTO public.moon VALUES (12, 'Charon', 'Spherical', 1520000000000000000000, 45000000, false, false, 'The largest moon of the dwarf planet Pluto.', 5);
INSERT INTO public.moon VALUES (13, 'Miranda', 'Spherical', 65900000000000000000, 45000000, false, false, 'A moon of Uranus with an odd, patchy surface.', 7);
INSERT INTO public.moon VALUES (14, 'Proxima b I', 'Spherical', 2500000000000000000, 4000000, false, false, 'A small moon orbiting Proxima Centauri b.', 9);
INSERT INTO public.moon VALUES (15, 'Vega b I', 'Spherical', 31000000000000000000, 3500000, false, false, 'A large moon orbiting Vega b.', 15);
INSERT INTO public.moon VALUES (16, 'Sirius b I', 'Irregular', 1000000000000000000, 30000000, false, false, 'A small moon of the dense white dwarf, Sirius b.', 10);
INSERT INTO public.moon VALUES (17, 'Polaris b I', 'Spherical', 420000000000000000000, 40000000, false, false, 'A moon orbiting Polaris b.', 14);
INSERT INTO public.moon VALUES (18, 'Enceladus II', 'Spherical', 120000000000000000000, 45000000, true, false, 'A theoretical moon orbiting Enceladus.', 9);
INSERT INTO public.moon VALUES (19, 'Europa II', 'Spherical', 50000000000000000000000, 45000000, true, true, 'A potential twin of Europa with a subsurface ocean.', 5);
INSERT INTO public.moon VALUES (20, 'Mars II Moon 1', 'Irregular', 2300000000000000000, 43000000, false, false, 'A moon orbiting the hypothetical Mars II.', 17);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Spherical', 330100000000000000000000, 4600000, 0, false, false, 'The smallest and innermost planet in the Solar System.', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Spherical', 4867000000000000000000000, 4600000, 0, false, false, 'The second planet from the Sun, with a thick atmosphere.', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Spherical', 5972000000000000000000000, 4500000, 1, false, false, 'The only planet known to support life.', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Spherical', 639000000000000000000000, 4500000, 2, false, false, 'The fourth planet from the Sun, known as the Red Planet.', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Spherical', 1898000000000000000000000000, 45000000, 79, false, true, 'The largest planet in the Solar System, a gas giant.', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Spherical', 568300000000000000000000000, 4500000, 82, false, true, 'Famous for its prominent ring system.', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Spherical', 86810000000000000000000000, 4500000, 27, false, true, 'An ice giant with a unique rotation axis.', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Spherical', 102400000000000000000000000, 4500000, 14, false, true, 'The farthest planet from the Sun in the Solar System.', 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'Spherical', 10700000000000000000000000, 4500000, 0, false, false, 'An exoplanet orbiting Proxima Centauri.', 3);
INSERT INTO public.planet VALUES (10, 'Sirius b', 'Spherical', 2600000000000000000000000000000, 242000000, 0, false, false, 'A white dwarf orbiting Sirius, a binary star system.', 2);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri Bb', 'Spherical', 410000000000000000000000, 5000000, 0, false, false, 'A planet orbiting Alpha Centauri A.', 3);
INSERT INTO public.planet VALUES (12, 'Betelgeuse I', 'Irregular', 380000000000000000000000000, 10000, 0, false, false, 'A rogue planet orbiting the red supergiant Betelgeuse.', 4);
INSERT INTO public.planet VALUES (13, 'Betelgeuse II', 'Irregular', 290000000000000000000000000, 80000, 0, false, false, 'Another rogue planet orbiting Betelgeuse.', 4);
INSERT INTO public.planet VALUES (14, 'Polaris b', 'Spherical', 4500000000000000000000000, 500000, 1, false, false, 'An exoplanet orbiting Polaris, the North Star.', 5);
INSERT INTO public.planet VALUES (15, 'Vega b', 'Spherical', 190000000000000000000000000, 45000000, 0, false, false, 'A gas giant orbiting Vega.', 6);
INSERT INTO public.planet VALUES (16, 'Vega c', 'Spherical', 5800000000000000000000000, 45000000, 0, false, true, 'A rocky planet with rings orbiting Vega.', 6);
INSERT INTO public.planet VALUES (17, 'Mars II', 'Spherical', 640000000000000000000000, 3000000, 2, false, false, 'Another hypothetical planet orbiting the star Vega.', 6);
INSERT INTO public.planet VALUES (18, 'Sirius c', 'Spherical', 1400000000000000000000000000000, 242000000, 0, false, false, 'A small, dense planet orbiting Sirius.', 2);
INSERT INTO public.planet VALUES (19, 'Proxima Centauri c', 'Spherical', 28000000000000000000000000, 4500000, 0, false, false, 'An exoplanet orbiting Proxima Centauri.', 3);
INSERT INTO public.planet VALUES (20, 'Alpha Centauri Cc', 'Spherical', 4700000000000000000000000, 500000, 0, false, false, 'A planet orbiting Alpha Centauri C.', 3);


--
-- Data for Name: shapes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.shapes VALUES (1, 'Spherical', 'A perfectly round shape where all surface points are equidistant from the center.');
INSERT INTO public.shapes VALUES (2, 'Irregular', 'An uneven or non-uniform shape, often formed by smaller or fragmented bodies.');
INSERT INTO public.shapes VALUES (3, 'Elliptical', 'A flattened, oval-like shape with two distinct axes of different lengths.');
INSERT INTO public.shapes VALUES (4, 'Disk', 'A flat, circular shape, often seen in rotating objects like galaxies or accretion disks.');
INSERT INTO public.shapes VALUES (5, 'Oblong', 'An elongated or stretched-out shape, often longer in one dimension.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Spherical', 1989000000000000000000000000000, 8, false, false, 460000, 'The star at the center of the Solar System.', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Spherical', 4018000000000000000000000000000, 0, false, false, 242000, 'The brightest star in the night sky, located in the Milky Way.', 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'Spherical', 2188000000000000000000000000000, 1, false, false, 450000, 'The largest star in the Alpha Centauri system, in the Milky Way.', 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Spherical', 13600000000000000000000000000000, 0, true, false, 10000, 'A red supergiant star in the constellation Orion, likely to go supernova.', 2);
INSERT INTO public.star VALUES (5, 'Polaris', 'Spherical', 5400000000000000000000000000000, 1, true, false, 70000, 'The North Star, a variable star in the Andromeda Galaxy.', 2);
INSERT INTO public.star VALUES (6, 'Vega', 'Spherical', 2135000000000000000000000000000, 0, false, false, 4550000, 'A bright star in the Lyra constellation, located in the Milky Way.', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: shapes_shape_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.shapes_shape_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: shapes shapes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shapes
    ADD CONSTRAINT shapes_name_key UNIQUE (name);


--
-- Name: shapes shapes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shapes
    ADD CONSTRAINT shapes_pkey PRIMARY KEY (shapes_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

