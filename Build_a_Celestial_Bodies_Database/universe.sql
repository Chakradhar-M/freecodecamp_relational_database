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
    name character varying(30) NOT NULL,
    fun_fact text NOT NULL,
    age_in_millions_of_years numeric(6,1),
    no_of_stars_in_billions integer,
    size_in_light_years integer,
    has_black_hole boolean,
    has_dark_matter boolean,
    galaxy_type character varying(30)
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
    name character varying(30) NOT NULL,
    fun_fact text NOT NULL,
    age_in_millions_of_years numeric(5,1),
    diameter_in_km integer,
    number_of_craters integer,
    has_atmosphere boolean,
    has_life boolean,
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
-- Name: moon_species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_species (
    moon_species_id integer NOT NULL,
    name character varying(30) NOT NULL,
    fun_fact text NOT NULL,
    evolved_millions_of_years_ago numeric(5,1),
    population_estimate integer,
    avg_height_cm integer,
    is_intelligent boolean,
    is_endangered boolean,
    moon_id integer
);


ALTER TABLE public.moon_species OWNER TO freecodecamp;

--
-- Name: moon_species_species_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_species_species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_species_species_id_seq OWNER TO freecodecamp;

--
-- Name: moon_species_species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_species_species_id_seq OWNED BY public.moon_species.moon_species_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    fun_fact text NOT NULL,
    age_in_millions_of_years numeric(5,1),
    diameter_in_km integer,
    number_of_moons integer,
    has_rings boolean,
    has_life boolean,
    star_id integer,
    gravity numeric(3,1),
    distance_from_earth_in_light_years numeric(3,1)
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
-- Name: planet_species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_species (
    planet_species_id integer NOT NULL,
    name character varying(30) NOT NULL,
    fun_fact text NOT NULL,
    evolved_millions_of_years_ago numeric(5,1),
    population_estimate integer,
    avg_height_cm integer,
    is_intelligent boolean,
    is_endangered boolean,
    planet_id integer
);


ALTER TABLE public.planet_species OWNER TO freecodecamp;

--
-- Name: planet_species_species_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_species_species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_species_species_id_seq OWNER TO freecodecamp;

--
-- Name: planet_species_species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_species_species_id_seq OWNED BY public.planet_species.planet_species_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    fun_fact text NOT NULL,
    age_in_millions_of_years numeric(5,1),
    no_of_planets_rotating_around_star integer,
    diameter_in_km integer,
    has_a_planetary_system boolean,
    has_a_asteroid_field boolean,
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
-- Name: moon_species moon_species_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_species ALTER COLUMN moon_species_id SET DEFAULT nextval('public.moon_species_species_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_species planet_species_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_species ALTER COLUMN planet_species_id SET DEFAULT nextval('public.planet_species_species_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Home to a galactic zoo of exotic particles', 1000.0, 1200, 220000, true, true, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Cotains a mysterious enrgy ribbon', 13500.0, 200, 105700, true, true, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Known for its bizarre magnetic fields', 12000.0, 40, 60000, true, false, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Its core has periodic starbursts every 5000 years', 500.0, 100, 60000, true, true, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'It has a massive central bulge that glows', 8000.0, 80, 50000, true, true, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Starforge', 'Stars are born every second in this galaxy', 15000.0, 50, 7500, true, true, 'Elliptical');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earths only natural satellite', 500.0, 3474, 5000, false, false, 1);
INSERT INTO public.moon VALUES (2, 'Deimos', 'Smaller of Mars two moons', 780.0, 1250, 0, false, false, 2);
INSERT INTO public.moon VALUES (3, 'Titan', 'Has lakes of liquid methane', 300.0, 5150, 300, true, false, 3);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Largest moon in the Solar System', 670.0, 5262, 2000, true, false, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 'Possible subsurface ocean', 220.0, 3122, 1000, true, true, 5);
INSERT INTO public.moon VALUES (6, 'Phobos', 'Larger of Mars two moons', 770.0, 2210, 0, false, false, 6);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Most heavily cratered object', 120.0, 4821, 10000, true, false, 7);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Geysers that shoot water into space', 1500.0, 504, 500, true, true, 8);
INSERT INTO public.moon VALUES (10, 'Tethys', 'Has a large valley called Ithaca Chasma', 700.0, 1062, 700, false, false, 10);
INSERT INTO public.moon VALUES (11, 'Dione', 'Icy moon with bright wisps', 400.0, 1122, 600, false, false, 11);
INSERT INTO public.moon VALUES (12, 'Io', 'Most volcanically active body', 490.0, 3642, 400, true, false, 12);
INSERT INTO public.moon VALUES (13, 'Miranda', 'Has huge cliffs and canyons', 45.0, 471, 1000, false, false, 13);
INSERT INTO public.moon VALUES (14, 'Charon', 'Largest moon of Pluto', 50.0, 1212, 300, false, false, 14);
INSERT INTO public.moon VALUES (15, 'Triton', 'Only large moon with a retrograde orbit', 40.0, 2706, 700, true, true, 15);
INSERT INTO public.moon VALUES (16, 'Umbriel', 'Darkest moon of Uranus', 320.0, 1169, 800, false, false, 5);
INSERT INTO public.moon VALUES (18, 'Mimas', 'Looks like the Death Star', 567.0, 396, 500, false, false, 7);
INSERT INTO public.moon VALUES (19, 'Iapetus', 'Has one dark and one bright hemisphere', 456.0, 1469, 200, false, false, 8);
INSERT INTO public.moon VALUES (20, 'Ariel', 'Has canyons and ridges', 568.0, 1158, 600, false, false, 9);
INSERT INTO public.moon VALUES (21, 'Ebriel', 'Dark and heavily cratered', 1100.0, 1169, 800, false, false, 10);
INSERT INTO public.moon VALUES (23, 'Hyperion', 'Has a very irregular shape', 234.0, 266, 1000, false, false, 12);
INSERT INTO public.moon VALUES (24, 'Nereid', 'Has a very eccentric orbit', 432.0, 340, 100, false, false, 13);
INSERT INTO public.moon VALUES (25, 'Proteus', 'Second largest moon of Neptune', 123.0, 420, 300, false, false, 14);
INSERT INTO public.moon VALUES (9, 'Oberon', 'Second largest moon of Uranus', 110.0, 1523, 200, false, true, 9);
INSERT INTO public.moon VALUES (17, 'Rhea', 'Has a thin atmosphere of oxygen', 470.0, 1528, 300, true, true, 6);
INSERT INTO public.moon VALUES (22, 'Eron', 'Has many large impact craters', 345.0, 1523, 200, false, true, 11);


--
-- Data for Name: moon_species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_species VALUES (1, 'Hylian', 'Humanoid species known for their heroic deeds', 1000.0, 1000000, 160, true, false, 5);
INSERT INTO public.moon_species VALUES (2, 'Wookiee', 'Tall, hairy species known for their strength', 1500.0, 3000000, 240, true, true, 8);
INSERT INTO public.moon_species VALUES (3, 'Martian', 'Indigenous species rumored to live underground', 4000.0, 100000, 120, true, true, 9);
INSERT INTO public.moon_species VALUES (4, 'Thargoid', 'Insectoid species known for their hostile nature', 5000.0, 5000000, 220, true, false, 15);
INSERT INTO public.moon_species VALUES (5, 'Draconian', 'Reptilian species known for their advanced tech', 3000.0, 7000000, 250, true, false, 17);
INSERT INTO public.moon_species VALUES (6, 'Horta', 'Silicon-based lifeform that tunnels through rock', 200.0, 1000000, 100, true, false, 22);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terra', 'Has vast oceans and diverse ecosystems.', 4500.0, 12742, 1, false, true, 1, 9.8, 0.0);
INSERT INTO public.planet VALUES (2, 'Vulcan', 'Home to a logical and advanced civilization.', 3000.0, 12300, 2, false, true, 2, 10.4, 8.6);
INSERT INTO public.planet VALUES (3, 'Pandora', 'Known for its floating mountains.', 5000.0, 11800, 3, true, true, 1, 9.1, 4.4);
INSERT INTO public.planet VALUES (4, 'Krypton', 'Source of a legendary superhero.', 7000.0, 13400, 4, false, false, 3, 11.3, 7.1);
INSERT INTO public.planet VALUES (5, 'Gallifrey', 'Home to time travelers.', 6000.0, 13500, 1, true, true, 4, 9.7, 12.3);
INSERT INTO public.planet VALUES (6, 'Tatooine', 'Famous for its twin suns and desert landscapes.', 2000.0, 10400, 2, false, false, 1, 8.9, 5.3);
INSERT INTO public.planet VALUES (7, 'Hoth', 'A frozen, ice-covered world.', 1500.0, 7200, 1, false, false, 6, 7.6, 3.8);
INSERT INTO public.planet VALUES (8, 'Naboo', 'Known for its beautiful lakes and cities.', 4000.0, 12100, 3, true, true, 2, 10.2, 8.6);
INSERT INTO public.planet VALUES (9, 'Cybertron', 'Mechanical world with transforming robots.', 8000.0, 13900, 0, false, false, 3, 12.1, 7.1);
INSERT INTO public.planet VALUES (10, 'Endor', 'Forested moon known for its small inhabitants.', 3000.0, 4900, 1, false, true, 5, 9.2, 12.3);
INSERT INTO public.planet VALUES (11, 'Arrakis', 'Desert planet with giant sandworms.', 6000.0, 10500, 0, false, false, 6, 9.0, 15.3);
INSERT INTO public.planet VALUES (12, 'Coruscant', 'Entirely covered by a large city.', 1000.0, 12200, 2, false, true, 2, 10.5, 8.6);
INSERT INTO public.planet VALUES (13, 'Dagobah', 'Swampy, murky planet with strong life force.', 4000.0, 8200, 1, false, true, 5, 8.5, 12.3);
INSERT INTO public.planet VALUES (14, 'Sontar', 'Militaristic world with cloned inhabitants.', 7000.0, 11000, 1, true, false, 4, 10.0, 12.3);
INSERT INTO public.planet VALUES (15, 'Bajor', 'Known for its ancient, spiritual culture.', 5000.0, 12600, 3, false, true, 6, 9.3, 15.3);


--
-- Data for Name: planet_species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_species VALUES (1, 'Human', 'Dominant species on Terra', 200.0, 7800000, 170, true, false, 1);
INSERT INTO public.planet_species VALUES (2, 'Vulcanian', 'Known for their logical mindset', 200.0, 500000, 180, true, false, 2);
INSERT INTO public.planet_species VALUES (3, 'Navi', 'Indigenous humanoid species on Pandora', 1000.0, 100000, 300, true, true, 3);
INSERT INTO public.planet_species VALUES (4, 'Time Lord', 'Time-traveling species from Gallifrey', 2000.0, 100000, 190, true, true, 5);
INSERT INTO public.planet_species VALUES (5, 'Ewok', 'Small, bear-like creatures living on Endor', 100.0, 5000000, 100, true, false, 7);
INSERT INTO public.planet_species VALUES (6, 'Gungan', 'Amphibious species living on Naboo', 500.0, 2000000, 210, true, false, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'Our Sun, source of life on Earth', 4600.0, 8, 1392000, true, true, 6);
INSERT INTO public.star VALUES (2, 'Sirius', 'Brightest star in the night sky.', 200.0, 2, 2364000, true, false, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'A red supergiant visible in Orion.', 8.5, 11, 1800000000, true, true, 3);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'Closest known star to the Sun.', 4850.0, 3, 200000, true, false, 4);
INSERT INTO public.star VALUES (5, 'Vega', 'Once the northern pole star.', 450.0, 5, 1274000, true, true, 5);
INSERT INTO public.star VALUES (6, 'Rigel', 'One of the brightest stars in the Milky Way.', 75.0, 7, 80000000, true, true, 1);
INSERT INTO public.star VALUES (7, 'Alpha Centauri A', 'Part of the closest star system to the Sun.', 4850.0, 3, 1200000, true, false, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_species_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_species_species_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_species_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_species_species_id_seq', 1, false);


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
-- Name: moon_species moon_species_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_species
    ADD CONSTRAINT moon_species_name_key UNIQUE (name);


--
-- Name: moon_species moon_species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_species
    ADD CONSTRAINT moon_species_pkey PRIMARY KEY (moon_species_id);


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
-- Name: planet_species planet_species_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_species
    ADD CONSTRAINT planet_species_name_key UNIQUE (name);


--
-- Name: planet_species planet_species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_species
    ADD CONSTRAINT planet_species_pkey PRIMARY KEY (planet_species_id);


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
-- Name: moon_species moon_species_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_species
    ADD CONSTRAINT moon_species_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet_species planet_species_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_species
    ADD CONSTRAINT planet_species_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

