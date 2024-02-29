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
    game_score integer NOT NULL
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
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
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

INSERT INTO public.games VALUES (132, 40, 905);
INSERT INTO public.games VALUES (133, 40, 649);
INSERT INTO public.games VALUES (134, 41, 449);
INSERT INTO public.games VALUES (135, 41, 897);
INSERT INTO public.games VALUES (136, 40, 587);
INSERT INTO public.games VALUES (137, 40, 802);
INSERT INTO public.games VALUES (138, 40, 361);
INSERT INTO public.games VALUES (139, 44, 833);
INSERT INTO public.games VALUES (140, 44, 865);
INSERT INTO public.games VALUES (141, 45, 777);
INSERT INTO public.games VALUES (142, 45, 161);
INSERT INTO public.games VALUES (143, 44, 2);
INSERT INTO public.games VALUES (144, 44, 906);
INSERT INTO public.games VALUES (145, 44, 617);
INSERT INTO public.games VALUES (146, 46, 2);
INSERT INTO public.games VALUES (147, 47, 609);
INSERT INTO public.games VALUES (148, 47, 833);
INSERT INTO public.games VALUES (149, 48, 129);
INSERT INTO public.games VALUES (150, 48, 105);
INSERT INTO public.games VALUES (151, 47, 299);
INSERT INTO public.games VALUES (152, 47, 226);
INSERT INTO public.games VALUES (153, 47, 1001);
INSERT INTO public.games VALUES (154, 49, 809);
INSERT INTO public.games VALUES (155, 49, 641);
INSERT INTO public.games VALUES (156, 50, 905);
INSERT INTO public.games VALUES (157, 50, 481);
INSERT INTO public.games VALUES (158, 49, 739);
INSERT INTO public.games VALUES (159, 49, 714);
INSERT INTO public.games VALUES (160, 49, 745);
INSERT INTO public.games VALUES (161, 51, 361);
INSERT INTO public.games VALUES (162, 51, 97);
INSERT INTO public.games VALUES (163, 52, 1);
INSERT INTO public.games VALUES (164, 52, 521);
INSERT INTO public.games VALUES (165, 51, 427);
INSERT INTO public.games VALUES (166, 51, 546);
INSERT INTO public.games VALUES (167, 51, 929);
INSERT INTO public.games VALUES (168, 53, 385);
INSERT INTO public.games VALUES (169, 53, 73);
INSERT INTO public.games VALUES (170, 54, 737);
INSERT INTO public.games VALUES (171, 54, 841);
INSERT INTO public.games VALUES (172, 53, 331);
INSERT INTO public.games VALUES (173, 53, 394);
INSERT INTO public.games VALUES (174, 53, 577);
INSERT INTO public.games VALUES (175, 55, 937);
INSERT INTO public.games VALUES (176, 55, 353);
INSERT INTO public.games VALUES (177, 56, 681);
INSERT INTO public.games VALUES (178, 56, 841);
INSERT INTO public.games VALUES (179, 55, 355);
INSERT INTO public.games VALUES (180, 55, 578);
INSERT INTO public.games VALUES (181, 55, 713);
INSERT INTO public.games VALUES (182, 57, 448);
INSERT INTO public.games VALUES (183, 57, 192);
INSERT INTO public.games VALUES (184, 58, 512);
INSERT INTO public.games VALUES (185, 58, 200);
INSERT INTO public.games VALUES (186, 57, 874);
INSERT INTO public.games VALUES (187, 57, 1);
INSERT INTO public.games VALUES (188, 57, 552);
INSERT INTO public.games VALUES (189, 59, 841);
INSERT INTO public.games VALUES (190, 59, 873);
INSERT INTO public.games VALUES (191, 60, 457);
INSERT INTO public.games VALUES (192, 60, 457);
INSERT INTO public.games VALUES (193, 59, 875);
INSERT INTO public.games VALUES (194, 59, 138);
INSERT INTO public.games VALUES (195, 59, 897);
INSERT INTO public.games VALUES (196, 61, 193);
INSERT INTO public.games VALUES (197, 61, 161);
INSERT INTO public.games VALUES (198, 62, 705);
INSERT INTO public.games VALUES (199, 62, 65);
INSERT INTO public.games VALUES (200, 61, 107);
INSERT INTO public.games VALUES (201, 61, 266);
INSERT INTO public.games VALUES (202, 61, 649);
INSERT INTO public.games VALUES (203, 46, 7);
INSERT INTO public.games VALUES (204, 63, 969);
INSERT INTO public.games VALUES (205, 63, 553);
INSERT INTO public.games VALUES (206, 64, 649);
INSERT INTO public.games VALUES (207, 64, 457);
INSERT INTO public.games VALUES (208, 63, 35);
INSERT INTO public.games VALUES (209, 63, 266);
INSERT INTO public.games VALUES (210, 63, 193);
INSERT INTO public.games VALUES (211, 65, 545);
INSERT INTO public.games VALUES (212, 65, 513);
INSERT INTO public.games VALUES (213, 66, 809);
INSERT INTO public.games VALUES (214, 66, 353);
INSERT INTO public.games VALUES (215, 65, 515);
INSERT INTO public.games VALUES (216, 65, 266);
INSERT INTO public.games VALUES (217, 65, 385);
INSERT INTO public.games VALUES (218, 67, 137);
INSERT INTO public.games VALUES (219, 67, 801);
INSERT INTO public.games VALUES (220, 68, 105);
INSERT INTO public.games VALUES (221, 68, 393);
INSERT INTO public.games VALUES (222, 67, 747);
INSERT INTO public.games VALUES (223, 67, 194);
INSERT INTO public.games VALUES (224, 67, 993);
INSERT INTO public.games VALUES (225, 69, 329);
INSERT INTO public.games VALUES (226, 69, 65);
INSERT INTO public.games VALUES (227, 70, 841);
INSERT INTO public.games VALUES (228, 70, 297);
INSERT INTO public.games VALUES (229, 69, 811);
INSERT INTO public.games VALUES (230, 69, 866);
INSERT INTO public.games VALUES (231, 69, 105);
INSERT INTO public.games VALUES (232, 71, 969);
INSERT INTO public.games VALUES (233, 71, 129);
INSERT INTO public.games VALUES (234, 72, 425);
INSERT INTO public.games VALUES (235, 72, 905);
INSERT INTO public.games VALUES (236, 71, 491);
INSERT INTO public.games VALUES (237, 71, 258);
INSERT INTO public.games VALUES (238, 71, 769);
INSERT INTO public.games VALUES (239, 73, 73);
INSERT INTO public.games VALUES (240, 73, 873);
INSERT INTO public.games VALUES (241, 74, 481);
INSERT INTO public.games VALUES (242, 74, 705);
INSERT INTO public.games VALUES (243, 73, 427);
INSERT INTO public.games VALUES (244, 73, 354);
INSERT INTO public.games VALUES (245, 73, 417);
INSERT INTO public.games VALUES (246, 75, 65);
INSERT INTO public.games VALUES (247, 75, 193);
INSERT INTO public.games VALUES (248, 76, 489);
INSERT INTO public.games VALUES (249, 76, 545);
INSERT INTO public.games VALUES (250, 75, 75);
INSERT INTO public.games VALUES (251, 75, 938);
INSERT INTO public.games VALUES (252, 75, 993);
INSERT INTO public.games VALUES (253, 77, 257);
INSERT INTO public.games VALUES (254, 77, 233);
INSERT INTO public.games VALUES (255, 78, 41);
INSERT INTO public.games VALUES (256, 78, 585);
INSERT INTO public.games VALUES (257, 77, 267);
INSERT INTO public.games VALUES (258, 77, 1002);
INSERT INTO public.games VALUES (259, 77, 265);
INSERT INTO public.games VALUES (260, 79, 169);
INSERT INTO public.games VALUES (261, 79, 361);
INSERT INTO public.games VALUES (262, 80, 745);
INSERT INTO public.games VALUES (263, 80, 937);
INSERT INTO public.games VALUES (264, 79, 451);
INSERT INTO public.games VALUES (265, 79, 34);
INSERT INTO public.games VALUES (266, 79, 385);
INSERT INTO public.games VALUES (267, 81, 265);
INSERT INTO public.games VALUES (268, 81, 545);
INSERT INTO public.games VALUES (269, 82, 129);
INSERT INTO public.games VALUES (270, 82, 577);
INSERT INTO public.games VALUES (271, 81, 771);
INSERT INTO public.games VALUES (272, 81, 98);
INSERT INTO public.games VALUES (273, 81, 457);
INSERT INTO public.games VALUES (274, 83, 1001);
INSERT INTO public.games VALUES (275, 83, 457);
INSERT INTO public.games VALUES (276, 84, 1);
INSERT INTO public.games VALUES (277, 84, 97);
INSERT INTO public.games VALUES (278, 83, 139);
INSERT INTO public.games VALUES (279, 83, 546);
INSERT INTO public.games VALUES (280, 83, 9);
INSERT INTO public.games VALUES (281, 85, 481);
INSERT INTO public.games VALUES (282, 85, 9);
INSERT INTO public.games VALUES (283, 86, 993);
INSERT INTO public.games VALUES (284, 86, 169);
INSERT INTO public.games VALUES (285, 85, 779);
INSERT INTO public.games VALUES (286, 85, 586);
INSERT INTO public.games VALUES (287, 85, 1);
INSERT INTO public.games VALUES (288, 87, 897);
INSERT INTO public.games VALUES (289, 87, 961);
INSERT INTO public.games VALUES (290, 88, 969);
INSERT INTO public.games VALUES (291, 88, 73);
INSERT INTO public.games VALUES (292, 87, 3);
INSERT INTO public.games VALUES (293, 87, 554);
INSERT INTO public.games VALUES (294, 87, 833);
INSERT INTO public.games VALUES (295, 89, 897);
INSERT INTO public.games VALUES (296, 89, 33);
INSERT INTO public.games VALUES (297, 90, 617);
INSERT INTO public.games VALUES (298, 90, 353);
INSERT INTO public.games VALUES (299, 89, 163);
INSERT INTO public.games VALUES (300, 89, 426);
INSERT INTO public.games VALUES (301, 89, 769);
INSERT INTO public.games VALUES (302, 91, 873);
INSERT INTO public.games VALUES (303, 91, 969);
INSERT INTO public.games VALUES (304, 92, 577);
INSERT INTO public.games VALUES (305, 92, 257);
INSERT INTO public.games VALUES (306, 91, 907);
INSERT INTO public.games VALUES (307, 91, 386);
INSERT INTO public.games VALUES (308, 91, 417);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (41, 'user_1709223580081', 2, 897);
INSERT INTO public.users VALUES (40, 'user_1709223580082', 5, 905);
INSERT INTO public.users VALUES (42, 'user_1709223683153', NULL, NULL);
INSERT INTO public.users VALUES (43, 'user_1709223683152', NULL, NULL);
INSERT INTO public.users VALUES (56, 'user_1709224080192', 2, 841);
INSERT INTO public.users VALUES (55, 'user_1709224080193', 5, 937);
INSERT INTO public.users VALUES (45, 'user_1709223733081', 2, 777);
INSERT INTO public.users VALUES (68, 'user_1709225749131', 2, 393);
INSERT INTO public.users VALUES (44, 'user_1709223733082', 5, 906);
INSERT INTO public.users VALUES (78, 'user_1709226224406', 2, 585);
INSERT INTO public.users VALUES (67, 'user_1709225749132', 5, 993);
INSERT INTO public.users VALUES (58, 'user_1709224242006', 2, 512);
INSERT INTO public.users VALUES (90, 'user_1709226311576', 2, 617);
INSERT INTO public.users VALUES (57, 'user_1709224242007', 5, 874);
INSERT INTO public.users VALUES (48, 'user_1709223860419', 2, 129);
INSERT INTO public.users VALUES (77, 'user_1709226224407', 5, 267);
INSERT INTO public.users VALUES (47, 'user_1709223860420', 5, 833);
INSERT INTO public.users VALUES (89, 'user_1709226311577', 5, 897);
INSERT INTO public.users VALUES (50, 'user_1709223915539', 2, 905);
INSERT INTO public.users VALUES (70, 'user_1709225795415', 2, 841);
INSERT INTO public.users VALUES (60, 'user_1709224252000', 2, 457);
INSERT INTO public.users VALUES (49, 'user_1709223915540', 5, 809);
INSERT INTO public.users VALUES (59, 'user_1709224252001', 5, 897);
INSERT INTO public.users VALUES (69, 'user_1709225795416', 5, 866);
INSERT INTO public.users VALUES (52, 'user_1709223987364', 2, 521);
INSERT INTO public.users VALUES (51, 'user_1709223987365', 5, 97);
INSERT INTO public.users VALUES (80, 'user_1709226237901', 2, 937);
INSERT INTO public.users VALUES (62, 'user_1709224674379', 2, 705);
INSERT INTO public.users VALUES (54, 'user_1709224002720', 2, 841);
INSERT INTO public.users VALUES (61, 'user_1709224674380', 5, 649);
INSERT INTO public.users VALUES (53, 'user_1709224002721', 5, 73);
INSERT INTO public.users VALUES (72, 'user_1709225896350', 2, 905);
INSERT INTO public.users VALUES (46, 'nalphe', 2, 7);
INSERT INTO public.users VALUES (79, 'user_1709226237902', 5, 451);
INSERT INTO public.users VALUES (71, 'user_1709225896351', 5, 969);
INSERT INTO public.users VALUES (92, 'user_1709226318271', 2, 577);
INSERT INTO public.users VALUES (64, 'user_1709225514007', 2, 649);
INSERT INTO public.users VALUES (63, 'user_1709225514008', 5, 969);
INSERT INTO public.users VALUES (91, 'user_1709226318272', 5, 969);
INSERT INTO public.users VALUES (66, 'user_1709225635542', 2, 809);
INSERT INTO public.users VALUES (74, 'user_1709225978121', 2, 705);
INSERT INTO public.users VALUES (65, 'user_1709225635543', 5, 545);
INSERT INTO public.users VALUES (82, 'user_1709226246054', 2, 577);
INSERT INTO public.users VALUES (73, 'user_1709225978122', 5, 873);
INSERT INTO public.users VALUES (81, 'user_1709226246055', 5, 98);
INSERT INTO public.users VALUES (76, 'user_1709226062268', 2, 545);
INSERT INTO public.users VALUES (75, 'user_1709226062269', 5, 993);
INSERT INTO public.users VALUES (84, 'user_1709226252525', 2, 97);
INSERT INTO public.users VALUES (83, 'user_1709226252526', 5, 9);
INSERT INTO public.users VALUES (86, 'user_1709226264599', 2, 993);
INSERT INTO public.users VALUES (85, 'user_1709226264600', 5, 9);
INSERT INTO public.users VALUES (88, 'user_1709226275369', 2, 969);
INSERT INTO public.users VALUES (87, 'user_1709226275370', 5, 961);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 308, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 92, true);


--
-- Name: users constraint_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT constraint_name UNIQUE (username);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

