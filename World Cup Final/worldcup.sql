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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(15) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (39, 2018, 'Final', 1047, 1048, 4, 2);
INSERT INTO public.games VALUES (40, 2018, 'Third Place', 1049, 1050, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Semi-Final', 1048, 1050, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Semi-Final', 1047, 1049, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Quarter-Final', 1048, 1051, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Quarter-Final', 1050, 1052, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Quarter-Final', 1049, 1053, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Quarter-Final', 1047, 1054, 2, 0);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 1050, 1055, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 1052, 1056, 1, 0);
INSERT INTO public.games VALUES (49, 2018, 'Eighth-Final', 1049, 1057, 3, 2);
INSERT INTO public.games VALUES (50, 2018, 'Eighth-Final', 1053, 1058, 2, 0);
INSERT INTO public.games VALUES (51, 2018, 'Eighth-Final', 1048, 1059, 2, 1);
INSERT INTO public.games VALUES (52, 2018, 'Eighth-Final', 1051, 1060, 2, 1);
INSERT INTO public.games VALUES (53, 2018, 'Eighth-Final', 1054, 1061, 2, 1);
INSERT INTO public.games VALUES (54, 2018, 'Eighth-Final', 1047, 1062, 4, 3);
INSERT INTO public.games VALUES (55, 2014, 'Final', 1063, 1062, 1, 0);
INSERT INTO public.games VALUES (56, 2014, 'Third Place', 1064, 1053, 3, 0);
INSERT INTO public.games VALUES (57, 2014, 'Semi-Final', 1062, 1064, 1, 0);
INSERT INTO public.games VALUES (58, 2014, 'Semi-Final', 1063, 1053, 7, 1);
INSERT INTO public.games VALUES (59, 2014, 'Quarter-Final', 1064, 1065, 1, 0);
INSERT INTO public.games VALUES (60, 2014, 'Quarter-Final', 1062, 1049, 1, 0);
INSERT INTO public.games VALUES (61, 2014, 'Quarter-Final', 1053, 1055, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Quarter-Final', 1063, 1047, 1, 0);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 1053, 1066, 2, 1);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 1055, 1054, 2, 0);
INSERT INTO public.games VALUES (65, 2014, 'Eighth-Final', 1047, 1067, 2, 0);
INSERT INTO public.games VALUES (66, 2014, 'Eighth-Final', 1063, 1068, 2, 1);
INSERT INTO public.games VALUES (67, 2014, 'Eighth-Final', 1064, 1058, 2, 1);
INSERT INTO public.games VALUES (68, 2014, 'Eighth-Final', 1065, 1069, 2, 1);
INSERT INTO public.games VALUES (69, 2014, 'Eighth-Final', 1062, 1056, 1, 0);
INSERT INTO public.games VALUES (70, 2014, 'Eighth-Final', 1049, 1070, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1047, 'France');
INSERT INTO public.teams VALUES (1048, 'Croatia');
INSERT INTO public.teams VALUES (1049, 'Belgium');
INSERT INTO public.teams VALUES (1050, 'England');
INSERT INTO public.teams VALUES (1051, 'Russia');
INSERT INTO public.teams VALUES (1052, 'Sweden');
INSERT INTO public.teams VALUES (1053, 'Brazil');
INSERT INTO public.teams VALUES (1054, 'Uruguay');
INSERT INTO public.teams VALUES (1055, 'Colombia');
INSERT INTO public.teams VALUES (1056, 'Switzerland');
INSERT INTO public.teams VALUES (1057, 'Japan');
INSERT INTO public.teams VALUES (1058, 'Mexico');
INSERT INTO public.teams VALUES (1059, 'Denmark');
INSERT INTO public.teams VALUES (1060, 'Spain');
INSERT INTO public.teams VALUES (1061, 'Portugal');
INSERT INTO public.teams VALUES (1062, 'Argentina');
INSERT INTO public.teams VALUES (1063, 'Germany');
INSERT INTO public.teams VALUES (1064, 'Netherlands');
INSERT INTO public.teams VALUES (1065, 'Costa Rica');
INSERT INTO public.teams VALUES (1066, 'Chile');
INSERT INTO public.teams VALUES (1067, 'Nigeria');
INSERT INTO public.teams VALUES (1068, 'Algeria');
INSERT INTO public.teams VALUES (1069, 'Greece');
INSERT INTO public.teams VALUES (1070, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 70, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1070, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

