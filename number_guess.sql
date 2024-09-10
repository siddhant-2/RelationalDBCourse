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
    username character varying(22) NOT NULL,
    num_of_guess integer NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'sid', 3);
INSERT INTO public.games VALUES (2, 'user_1725966607608', 43);
INSERT INTO public.games VALUES (3, 'user_1725966607608', 998);
INSERT INTO public.games VALUES (4, 'user_1725966607607', 899);
INSERT INTO public.games VALUES (5, 'user_1725966607607', 748);
INSERT INTO public.games VALUES (6, 'user_1725966607608', 984);
INSERT INTO public.games VALUES (7, 'user_1725966607608', 209);
INSERT INTO public.games VALUES (8, 'user_1725966607608', 500);
INSERT INTO public.games VALUES (9, 'sid', 11);
INSERT INTO public.games VALUES (10, 'user_1725967038657', 543);
INSERT INTO public.games VALUES (11, 'user_1725967038657', 637);
INSERT INTO public.games VALUES (12, 'user_1725967038656', 328);
INSERT INTO public.games VALUES (13, 'user_1725967038656', 686);
INSERT INTO public.games VALUES (14, 'user_1725967038657', 408);
INSERT INTO public.games VALUES (15, 'user_1725967038657', 418);
INSERT INTO public.games VALUES (16, 'user_1725967038657', 84);
INSERT INTO public.games VALUES (17, 'sid', 5);
INSERT INTO public.games VALUES (18, 'sid', 9);
INSERT INTO public.games VALUES (19, 'user_1725967337802', 600);
INSERT INTO public.games VALUES (20, 'user_1725967337802', 935);
INSERT INTO public.games VALUES (21, 'user_1725967337801', 456);
INSERT INTO public.games VALUES (22, 'user_1725967337801', 53);
INSERT INTO public.games VALUES (23, 'user_1725967337802', 93);
INSERT INTO public.games VALUES (24, 'user_1725967337802', 704);
INSERT INTO public.games VALUES (25, 'user_1725967337802', 546);
INSERT INTO public.games VALUES (26, 'user_1725967418326', 169);
INSERT INTO public.games VALUES (27, 'user_1725967418326', 25);
INSERT INTO public.games VALUES (28, 'user_1725967418325', 639);
INSERT INTO public.games VALUES (29, 'user_1725967418325', 886);
INSERT INTO public.games VALUES (30, 'user_1725967418326', 889);
INSERT INTO public.games VALUES (31, 'user_1725967418326', 328);
INSERT INTO public.games VALUES (32, 'user_1725967418326', 113);
INSERT INTO public.games VALUES (33, 'user_1725967463431', 550);
INSERT INTO public.games VALUES (34, 'user_1725967463431', 654);
INSERT INTO public.games VALUES (35, 'user_1725967463430', 833);
INSERT INTO public.games VALUES (36, 'user_1725967463430', 861);
INSERT INTO public.games VALUES (37, 'user_1725967463431', 989);
INSERT INTO public.games VALUES (38, 'user_1725967463431', 449);
INSERT INTO public.games VALUES (39, 'user_1725967463431', 77);
INSERT INTO public.games VALUES (40, 'user_1725967510692', 961);
INSERT INTO public.games VALUES (41, 'user_1725967510692', 246);
INSERT INTO public.games VALUES (42, 'user_1725967510691', 260);
INSERT INTO public.games VALUES (43, 'user_1725967510691', 861);
INSERT INTO public.games VALUES (44, 'user_1725967510692', 51);
INSERT INTO public.games VALUES (45, 'user_1725967510692', 460);
INSERT INTO public.games VALUES (46, 'user_1725967510692', 716);
INSERT INTO public.games VALUES (47, 'user_1725967550661', 289);
INSERT INTO public.games VALUES (48, 'user_1725967550661', 949);
INSERT INTO public.games VALUES (49, 'user_1725967550660', 564);
INSERT INTO public.games VALUES (50, 'user_1725967550660', 337);
INSERT INTO public.games VALUES (51, 'user_1725967550661', 911);
INSERT INTO public.games VALUES (52, 'user_1725967550661', 338);
INSERT INTO public.games VALUES (53, 'user_1725967550661', 559);
INSERT INTO public.games VALUES (54, 'user_1725967596215', 849);
INSERT INTO public.games VALUES (55, 'user_1725967596215', 208);
INSERT INTO public.games VALUES (56, 'user_1725967596214', 287);
INSERT INTO public.games VALUES (57, 'user_1725967596214', 636);
INSERT INTO public.games VALUES (58, 'user_1725967596215', 717);
INSERT INTO public.games VALUES (59, 'user_1725967596215', 795);
INSERT INTO public.games VALUES (60, 'user_1725967596215', 780);
INSERT INTO public.games VALUES (61, 'sid', 10);
INSERT INTO public.games VALUES (62, 'user_1725967757194', 308);
INSERT INTO public.games VALUES (63, 'user_1725967757194', 267);
INSERT INTO public.games VALUES (64, 'user_1725967757193', 562);
INSERT INTO public.games VALUES (65, 'user_1725967757193', 950);
INSERT INTO public.games VALUES (66, 'user_1725967757194', 674);
INSERT INTO public.games VALUES (67, 'user_1725967757194', 461);
INSERT INTO public.games VALUES (68, 'user_1725967757194', 96);
INSERT INTO public.games VALUES (69, 'user_1725967972062', 619);
INSERT INTO public.games VALUES (70, 'user_1725967972062', 798);
INSERT INTO public.games VALUES (71, 'user_1725967972061', 336);
INSERT INTO public.games VALUES (72, 'user_1725967972061', 79);
INSERT INTO public.games VALUES (73, 'user_1725967972062', 426);
INSERT INTO public.games VALUES (74, 'user_1725967972062', 552);
INSERT INTO public.games VALUES (75, 'user_1725967972062', 451);
INSERT INTO public.games VALUES (76, 'user_1725968048058', 584);
INSERT INTO public.games VALUES (77, 'user_1725968048058', 521);
INSERT INTO public.games VALUES (78, 'user_1725968048057', 654);
INSERT INTO public.games VALUES (79, 'user_1725968048057', 854);
INSERT INTO public.games VALUES (80, 'user_1725968048058', 652);
INSERT INTO public.games VALUES (81, 'user_1725968048058', 449);
INSERT INTO public.games VALUES (82, 'user_1725968048058', 975);
INSERT INTO public.games VALUES (83, 'user_1725968347773', 192);
INSERT INTO public.games VALUES (84, 'user_1725968347773', 150);
INSERT INTO public.games VALUES (85, 'user_1725968347772', 949);
INSERT INTO public.games VALUES (86, 'user_1725968347772', 385);
INSERT INTO public.games VALUES (87, 'user_1725968347773', 659);
INSERT INTO public.games VALUES (88, 'user_1725968347773', 325);
INSERT INTO public.games VALUES (89, 'user_1725968347773', 351);
INSERT INTO public.games VALUES (90, 'user_1725968387658', 591);
INSERT INTO public.games VALUES (91, 'user_1725968387658', 745);
INSERT INTO public.games VALUES (92, 'user_1725968387657', 632);
INSERT INTO public.games VALUES (93, 'user_1725968387657', 347);
INSERT INTO public.games VALUES (94, 'user_1725968387658', 979);
INSERT INTO public.games VALUES (95, 'user_1725968387658', 52);
INSERT INTO public.games VALUES (96, 'user_1725968387658', 43);
INSERT INTO public.games VALUES (97, 'user_1725968450661', 488);
INSERT INTO public.games VALUES (98, 'user_1725968450661', 22);
INSERT INTO public.games VALUES (99, 'user_1725968450660', 519);
INSERT INTO public.games VALUES (100, 'user_1725968450660', 961);
INSERT INTO public.games VALUES (101, 'user_1725968450661', 423);
INSERT INTO public.games VALUES (102, 'user_1725968450661', 660);
INSERT INTO public.games VALUES (103, 'user_1725968450661', 935);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 103, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

