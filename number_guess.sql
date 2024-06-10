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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL,
    secret_number integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 8, 1, 185);
INSERT INTO public.games VALUES (2, 36, 132, 131);
INSERT INTO public.games VALUES (3, 36, 119, 118);
INSERT INTO public.games VALUES (4, 37, 351, 350);
INSERT INTO public.games VALUES (5, 37, 671, 670);
INSERT INTO public.games VALUES (6, 36, 984, 981);
INSERT INTO public.games VALUES (7, 36, 646, 644);
INSERT INTO public.games VALUES (8, 36, 539, 538);
INSERT INTO public.games VALUES (9, 38, 813, 812);
INSERT INTO public.games VALUES (10, 38, 752, 751);
INSERT INTO public.games VALUES (11, 39, 799, 798);
INSERT INTO public.games VALUES (12, 39, 301, 300);
INSERT INTO public.games VALUES (13, 38, 962, 959);
INSERT INTO public.games VALUES (14, 38, 206, 204);
INSERT INTO public.games VALUES (15, 38, 833, 832);
INSERT INTO public.games VALUES (16, 8, 3, 578);
INSERT INTO public.games VALUES (17, 40, 707, 706);
INSERT INTO public.games VALUES (18, 40, 87, 86);
INSERT INTO public.games VALUES (19, 41, 512, 511);
INSERT INTO public.games VALUES (20, 41, 702, 701);
INSERT INTO public.games VALUES (21, 40, 104, 101);
INSERT INTO public.games VALUES (22, 40, 929, 927);
INSERT INTO public.games VALUES (23, 40, 931, 930);
INSERT INTO public.games VALUES (24, 42, 606, 605);
INSERT INTO public.games VALUES (25, 42, 322, 321);
INSERT INTO public.games VALUES (26, 43, 975, 974);
INSERT INTO public.games VALUES (27, 43, 371, 370);
INSERT INTO public.games VALUES (28, 42, 749, 746);
INSERT INTO public.games VALUES (29, 42, 60, 58);
INSERT INTO public.games VALUES (30, 42, 55, 54);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1717973874691');
INSERT INTO public.users VALUES (3, 'user_1717973874690');
INSERT INTO public.users VALUES (8, 'trent');
INSERT INTO public.users VALUES (9, 'user_1717975162928');
INSERT INTO public.users VALUES (10, 'user_1717975162927');
INSERT INTO public.users VALUES (11, 'user_1717975201367');
INSERT INTO public.users VALUES (12, 'user_1717975201366');
INSERT INTO public.users VALUES (13, 'user_1717975204018');
INSERT INTO public.users VALUES (14, 'user_1717975204017');
INSERT INTO public.users VALUES (15, 'user_1717975229732');
INSERT INTO public.users VALUES (16, 'user_1717975229731');
INSERT INTO public.users VALUES (17, 'user_1717975272673');
INSERT INTO public.users VALUES (18, 'user_1717975272672');
INSERT INTO public.users VALUES (19, '1');
INSERT INTO public.users VALUES (20, 'user_1717975315925');
INSERT INTO public.users VALUES (21, 'user_1717975315924');
INSERT INTO public.users VALUES (22, 'user_1717975385194');
INSERT INTO public.users VALUES (23, 'user_1717975385193');
INSERT INTO public.users VALUES (24, 'user_1717975415448');
INSERT INTO public.users VALUES (25, 'user_1717975415447');
INSERT INTO public.users VALUES (26, 'user_1717976329132');
INSERT INTO public.users VALUES (27, 'user_1717976329131');
INSERT INTO public.users VALUES (28, 'user_1717976378745');
INSERT INTO public.users VALUES (29, 'user_1717976378744');
INSERT INTO public.users VALUES (30, 'user_1717976548267');
INSERT INTO public.users VALUES (31, 'user_1717976548266');
INSERT INTO public.users VALUES (32, 'user_1717976568786');
INSERT INTO public.users VALUES (33, 'user_1717976568785');
INSERT INTO public.users VALUES (34, 'user_1717976678477');
INSERT INTO public.users VALUES (35, 'user_1717976678476');
INSERT INTO public.users VALUES (36, 'user_1717976792721');
INSERT INTO public.users VALUES (37, 'user_1717976792720');
INSERT INTO public.users VALUES (38, 'user_1717976827076');
INSERT INTO public.users VALUES (39, 'user_1717976827075');
INSERT INTO public.users VALUES (40, 'user_1717976855202');
INSERT INTO public.users VALUES (41, 'user_1717976855201');
INSERT INTO public.users VALUES (42, 'user_1717977733235');
INSERT INTO public.users VALUES (43, 'user_1717977733234');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 30, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 43, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

