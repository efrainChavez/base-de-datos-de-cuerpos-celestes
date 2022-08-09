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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    galaxy_type text
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
    name character varying(30),
    description text,
    age_in_millions_of_years integer,
    is_spherical boolean NOT NULL,
    has_life boolean NOT NULL,
    distance_from_earth integer,
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    planet_description text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    is_spherical boolean NOT NULL,
    planet_type text,
    has_life boolean NOT NULL,
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
    name character varying(30),
    description text,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    is_spherical boolean NOT NULL,
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
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


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

COPY public.galaxy (galaxy_id, name, description, age_in_millions_of_years, galaxy_type) FROM stdin;
1	mi.	In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas	33573	A
2	id,	nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula.	45423	C
3	Nam	Nulla eget metus eu erat semper rutrum. Fusce dolor quam,	78258	B
4	Etiam	sem mollis dui, in sodales elit erat vitae risus. Duis	91483	A
5	habitant	vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at	19616	B
6	Morbi	auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan	10621	B
7	nulla	tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio.	74624	B
8	magnis	magna a neque. Nullam ut nisi a odio semper cursus.	59116	A
9	in	Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede.	87943	A
10	egestas	Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet	79147	B
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, description, age_in_millions_of_years, is_spherical, has_life, distance_from_earth, planet_id) FROM stdin;
1	Vel PC	Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci,	42607	t	t	7487	\N
2	Elementum Corporation	Curabitur egestas nunc sed libero. Proin sed turpis nec mauris	49309	f	t	2551	\N
3	Hendrerit Incorporated	Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a	70998	f	f	5735	\N
4	Vestibulum Ante Industries	nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam	19961	t	f	1228	\N
5	Nisl Elementum Institute	pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus	62687	t	f	8794	\N
6	Non Nisi PC	justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed	79691	f	t	7914	\N
7	Imperdiet Limited	vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus	98684	t	f	4335	\N
8	Sodales Institute	et netus et malesuada fames ac turpis egestas. Fusce aliquet	9950	t	t	3587	\N
9	Molestie Tortor LLP	malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit.	95987	f	f	4739	\N
10	Nulla Eu Consulting	sem egestas blandit. Nam nulla magna, malesuada vel, convallis in,	15297	t	f	329	\N
11	Et Corporation	Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna.	44208	t	f	3345	\N
12	Lobortis Class LLP	vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at	97027	t	f	9713	\N
13	Placerat LLP	neque. Morbi quis urna. Nunc quis arcu vel quam dignissim	90173	f	f	4748	\N
14	Egestas Sed Pharetra Inc.	facilisis, magna tellus faucibus leo, in lobortis tellus justo sit	84439	f	t	5633	\N
15	Sed Libero Incorporated	vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet	74192	t	t	6486	\N
16	Ipsum Primis In Corporation	dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a	46720	f	f	2976	\N
17	Lectus Nullam Corporation	lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis	79894	f	f	9638	\N
18	Euismod Mauris Associates	tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio.	20005	t	t	2386	\N
19	Diam Eu Inc.	Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra.	86119	f	f	9604	\N
20	Magna Sed Institute	est, vitae sodales nisi magna sed dui. Fusce aliquam, enim	8145	t	f	7115	\N
\.


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.more_info (more_info_id, name, planet_id, planet_description) FROM stdin;
1	Tây Ninh	1	In nec orci. Donec nibh. Quisque nonummy
2	Olinda.	2	eros non enim commodo hendrerit. Donec porttitor
3	Fauske	3	luctus et ultrices posuere cubilia Curae Donec
4	Assen	4	torquent per conubia nostra, per inceptos hymenaeos.
5	Virginia.	5	ut nisi a odio semper cursus. Integer
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, description, age_in_millions_of_years, distance_from_earth, is_spherical, planet_type, has_life, star_id) FROM stdin;
1	Tây Ninh	massa non ante bibendum ullamcorper. Duis cursus, diam at pretium	59527	1782	t	A	t	\N
2	Olinda	ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque	32029	1232	f	C	t	\N
3	Fauske	Nullam ut nisi a odio semper cursus. Integer mollis. Integer	52334	1439	t	B	t	\N
4	Assen	Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum	69827	2168	f	B	t	\N
5	Virginia	Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui	19363	1642	f	C	t	\N
6	Suwałki	dictum placerat, augue. Sed molestie. Sed id risus quis diam	25982	528	f	A	f	\N
7	Bosa	ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque	77769	2602	f	C	f	\N
8	Riohacha	Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra.	24526	22	f	B	t	\N
9	Tranent	nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet.	41885	0	f	B	f	\N
10	Tambov	Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat	79604	1398	t	A	t	\N
13	Dui Consulting	nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam	98895	9641	t	A	t	\N
14	Non Quam Pellentesque Corp.	Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis	5798	3748	f	C	f	\N
15	Dolor Sit PC	dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies	317	4823	t	B	f	\N
16	Diam Incorporated	hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium	86478	6141	f	C	t	\N
17	Venenatis Corp.	urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis	42654	1554	t	B	t	\N
18	Eleifend Egestas PC	ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris	47817	1473	f	B	f	\N
19	Egestas Urna Ltd	Sed eget lacus. Mauris non dui nec urna suscipit nonummy.	58417	3683	t	A	f	\N
20	Eu Dolor Institute	Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc	53354	4267	f	B	f	\N
21	Pede Ultrices A Associates	Cum sociis natoque penatibus et magnis dis parturient montes, nascetur	79823	7157	t	B	t	\N
22	A Aliquet Consulting	gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat.	52240	9433	t	C	f	\N
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, description, age_in_millions_of_years, distance_from_earth, is_spherical, galaxy_id) FROM stdin;
1	Gravida Institute	lectus sit amet luctus vulputate, nisi sem semper erat, in	53315	439	t	\N
2	Massa Company	egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus	19280	5993	f	\N
3	Ultricies Ligula Ltd	Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem,	88933	8149	t	\N
4	Vel Pede Blandit Limited	orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce	87633	8477	t	\N
5	A PC	convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula	38452	4394	t	\N
6	Nonummy Ac LLP	eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero	31638	1131	t	\N
7	Quam Ltd	ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non,	92395	1449	t	\N
8	Vitae Associates	pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus	49393	638	t	\N
9	Nulla Eu Industries	nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque	9854	7355	t	\N
10	Leo Industries	nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam	59553	6131	t	\N
\.


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 22, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


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
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


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
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


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
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


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
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: more_info fk_more_info; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT fk_more_info FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
