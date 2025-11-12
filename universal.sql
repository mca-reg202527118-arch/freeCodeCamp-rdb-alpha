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
        name character varying(50) NOT NULL,
            description text,
                has_life boolean NOT NULL,
                    age_in_millions_of_years integer,
                        distance_from_earth numeric(15,2) NOT NULL
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
                                                        name character varying(50) NOT NULL,
                                                            planet_id integer NOT NULL,
                                                                is_spherical boolean NOT NULL,
                                                                    description text,
                                                                        age_in_millions_of_years integer
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
                                                                                                        name character varying(50) NOT NULL,
                                                                                                            star_id integer NOT NULL,
                                                                                                                has_life boolean NOT NULL,
                                                                                                                    is_spherical boolean NOT NULL,
                                                                                                                        age_in_millions_of_years integer,
                                                                                                                            planet_type character varying(30)
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
                                                                                                                                                    -- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
                                                                                                                                                    --

                                                                                                                                                    CREATE TABLE public.planet_type (
                                                                                                                                                        planet_type_id integer NOT NULL,
                                                                                                                                                            name character varying(30) NOT NULL,
                                                                                                                                                                description text NOT NULL
                                                                                                                                                                );


                                                                                                                                                                ALTER TABLE public.planet_type OWNER TO freecodecamp;

                                                                                                                                                                --
                                                                                                                                                                -- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
                                                                                                                                                                --

                                                                                                                                                                CREATE SEQUENCE public.planet_type_planet_type_id_seq
                                                                                                                                                                    AS integer
                                                                                                                                                                        START WITH 1
                                                                                                                                                                            INCREMENT BY 1
                                                                                                                                                                                NO MINVALUE
                                                                                                                                                                                    NO MAXVALUE
                                                                                                                                                                                        CACHE 1;


                                                                                                                                                                                        ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

                                                                                                                                                                                        --
                                                                                                                                                                                        -- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
                                                                                                                                                                                        --

                                                                                                                                                                                        ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


                                                                                                                                                                                        --
                                                                                                                                                                                        -- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
                                                                                                                                                                                        --

                                                                                                                                                                                        CREATE TABLE public.star (
                                                                                                                                                                                            star_id integer NOT NULL,
                                                                                                                                                                                                name character varying(50) NOT NULL,
                                                                                                                                                                                                    galaxy_id integer NOT NULL,
                                                                                                                                                                                                        is_spherical boolean NOT NULL,
                                                                                                                                                                                                            age_in_millions_of_years integer,
                                                                                                                                                                                                                description text
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
                                                                                                                                                                                                                                        -- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                        --

                                                                                                                                                                                                                                        ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


                                                                                                                                                                                                                                        --
                                                                                                                                                                                                                                        -- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                        --

                                                                                                                                                                                                                                        ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


                                                                                                                                                                                                                                        --
                                                                                                                                                                                                                                        -- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                        --

                                                                                                                                                                                                                                        INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', true, 13600, 0.00);
                                                                                                                                                                                                                                        INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest major galaxy', false, 10000, 2537000.00);
                                                                                                                                                                                                                                        INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 'Beautiful spiral galaxy', false, 8000, 23000000.00);
                                                                                                                                                                                                                                        INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Bright nucleus and large central bulge', false, 9000, 31000000.00);
                                                                                                                                                                                                                                        INSERT INTO public.galaxy VALUES (5, 'Cartwheel', 'Unusual ring shape', false, 400, 500000000.00);
                                                                                                                                                                                                                                        INSERT INTO public.galaxy VALUES (6, 'Triangulum', 'Third largest in Local Group', false, 12000, 3000000.00);


                                                                                                                                                                                                                                        --
                                                                                                                                                                                                                                        -- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                        --

                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (1, 'Moon', 1, true, 'Our natural satellite', 4500);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (2, 'Phobos', 2, true, 'Larger moon of Mars', 4500);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (3, 'Deimos', 2, true, 'Smaller moon of Mars', 4500);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (4, 'Io', 4, true, 'Volcanic moon of Jupiter', 4600);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (5, 'Europa', 4, true, 'Icy moon of Jupiter', 4600);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (6, 'Ganymede', 4, true, 'Largest moon', 4600);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (7, 'Callisto', 4, true, 'Cratered moon', 4600);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (8, 'Titan', 5, true, 'Largest moon of Saturn', 4600);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (9, 'Rhea', 5, true, 'Second largest moon of Saturn', 4600);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (10, 'Iapetus', 5, true, 'Two-tone coloration', 4600);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (11, 'Dione', 5, true, 'Heavily cratered', 4600);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (12, 'Tethys', 5, true, 'Bright icy moon', 4600);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (13, 'Enceladus', 5, true, 'Geysers of water', 4600);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (14, 'Mimas', 5, true, 'Has a large crater', 4600);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (15, 'Triton', 6, true, 'Largest moon of Neptune', 4600);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (16, 'Nereid', 6, true, 'Elliptical orbit', 4600);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (17, 'Charon', 3, true, 'Moon of Pluto', 4500);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (18, 'Proxima c1', 8, true, 'Moon of Proxima b', 5000);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (19, 'Andromeda m1', 10, true, 'Exomoon', 7000);
                                                                                                                                                                                                                                        INSERT INTO public.moon VALUES (20, 'Sombrero m1', 11, true, 'Exomoon', 8000);


                                                                                                                                                                                                                                        --
                                                                                                                                                                                                                                        -- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                        --

                                                                                                                                                                                                                                        INSERT INTO public.planet VALUES (1, 'Earth', 1, true, true, 4500, 'Terrestrial');
                                                                                                                                                                                                                                        INSERT INTO public.planet VALUES (2, 'Mars', 1, false, true, 4500, 'Terrestrial');
                                                                                                                                                                                                                                        INSERT INTO public.planet VALUES (3, 'Venus', 1, false, true, 4600, 'Terrestrial');
                                                                                                                                                                                                                                        INSERT INTO public.planet VALUES (4, 'Jupiter', 1, false, true, 4600, 'Gas Giant');
                                                                                                                                                                                                                                        INSERT INTO public.planet VALUES (5, 'Saturn', 1, false, true, 4600, 'Gas Giant');
                                                                                                                                                                                                                                        INSERT INTO public.planet VALUES (6, 'Neptune', 1, false, true, 4600, 'Ice Giant');
                                                                                                                                                                                                                                        INSERT INTO public.planet VALUES (7, 'Mercury', 1, false, true, 4600, 'Terrestrial');
                                                                                                                                                                                                                                        INSERT INTO public.planet VALUES (8, 'Proxima b', 4, false, true, 5000, 'Exoplanet');
                                                                                                                                                                                                                                        INSERT INTO public.planet VALUES (9, 'Centauri Bb', 2, false, true, 5000, 'Exoplanet');
                                                                                                                                                                                                                                        INSERT INTO public.planet VALUES (10, 'Andromeda-1', 5, false, true, 7000, 'Exoplanet');
                                                                                                                                                                                                                                        INSERT INTO public.planet VALUES (11, 'Sombrero-2', 6, false, true, 8000, 'Exoplanet');
                                                                                                                                                                                                                                        INSERT INTO public.planet VALUES (12, 'Triangulum-3', 3, false, true, 9000, 'Exoplanet');


                                                                                                                                                                                                                                        --
                                                                                                                                                                                                                                        -- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                        --

                                                                                                                                                                                                                                        INSERT INTO public.planet_type VALUES (1, 'Terrestrial', 'Rocky planets like Earth');
                                                                                                                                                                                                                                        INSERT INTO public.planet_type VALUES (2, 'Gas Giant', 'Large gaseous planets');
                                                                                                                                                                                                                                        INSERT INTO public.planet_type VALUES (3, 'Ice Giant', 'Planets with icy composition');
                                                                                                                                                                                                                                        INSERT INTO public.planet_type VALUES (4, 'Exoplanet', 'Planet outside our solar system');


                                                                                                                                                                                                                                        --
                                                                                                                                                                                                                                        -- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                        --

                                                                                                                                                                                                                                        INSERT INTO public.star VALUES (1, 'Sun', 1, true, 4600, 'Main sequence star');
                                                                                                                                                                                                                                        INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 1, true, 6000, 'Part of binary system');
                                                                                                                                                                                                                                        INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, true, 8000, 'Red supergiant');
                                                                                                                                                                                                                                        INSERT INTO public.star VALUES (4, 'Proxima Centauri', 1, true, 4500, 'Closest star to Sun');
                                                                                                                                                                                                                                        INSERT INTO public.star VALUES (5, 'Andromeda A', 2, true, 7000, 'Bright star in Andromeda');
                                                                                                                                                                                                                                        INSERT INTO public.star VALUES (6, 'Sombrero Star', 4, true, 9000, 'Star in Sombrero Galaxy');


                                                                                                                                                                                                                                        --
                                                                                                                                                                                                                                        -- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                        --

                                                                                                                                                                                                                                        SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


                                                                                                                                                                                                                                        --
                                                                                                                                                                                                                                        -- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                        --

                                                                                                                                                                                                                                        SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


                                                                                                                                                                                                                                        --
                                                                                                                                                                                                                                        -- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                        --

                                                                                                                                                                                                                                        SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


                                                                                                                                                                                                                                        --
                                                                                                                                                                                                                                        -- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                        --

                                                                                                                                                                                                                                        SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 4, true);


                                                                                                                                                                                                                                        --
                                                                                                                                                                                                                                        -- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                        --

                                                                                                                                                                                                                                        SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
                                                                                                                                                                                                                                                                -- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                                ALTER TABLE ONLY public.planet_type
                                                                                                                                                                                                                                                                    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


                                                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                                                    -- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                                    --

                                                                                                                                                                                                                                                                    ALTER TABLE ONLY public.planet_type
                                                                                                                                                                                                                                                                        ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


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

                                                                                                                                                                                                                                                                                            
