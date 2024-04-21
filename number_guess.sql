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
    guesses integer NOT NULL,
    u_id integer
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
    u_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.u_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users u_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN u_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 965, 1);
INSERT INTO public.games VALUES (2, 664, 1);
INSERT INTO public.games VALUES (3, 159, 2);
INSERT INTO public.games VALUES (4, 849, 2);
INSERT INTO public.games VALUES (5, 144, 1);
INSERT INTO public.games VALUES (6, 304, 1);
INSERT INTO public.games VALUES (7, 382, 1);
INSERT INTO public.games VALUES (8, 633, 3);
INSERT INTO public.games VALUES (9, 124, 3);
INSERT INTO public.games VALUES (10, 248, 4);
INSERT INTO public.games VALUES (11, 731, 4);
INSERT INTO public.games VALUES (12, 932, 3);
INSERT INTO public.games VALUES (13, 980, 3);
INSERT INTO public.games VALUES (14, 493, 3);
INSERT INTO public.games VALUES (15, 584, 5);
INSERT INTO public.games VALUES (16, 53, 5);
INSERT INTO public.games VALUES (17, 570, 6);
INSERT INTO public.games VALUES (18, 353, 6);
INSERT INTO public.games VALUES (19, 34, 5);
INSERT INTO public.games VALUES (20, 28, 5);
INSERT INTO public.games VALUES (21, 457, 5);
INSERT INTO public.games VALUES (22, 699, 7);
INSERT INTO public.games VALUES (23, 809, 7);
INSERT INTO public.games VALUES (24, 497, 8);
INSERT INTO public.games VALUES (25, 61, 8);
INSERT INTO public.games VALUES (26, 691, 7);
INSERT INTO public.games VALUES (27, 404, 7);
INSERT INTO public.games VALUES (28, 322, 7);
INSERT INTO public.games VALUES (29, 823, 9);
INSERT INTO public.games VALUES (30, 270, 9);
INSERT INTO public.games VALUES (31, 404, 10);
INSERT INTO public.games VALUES (32, 462, 10);
INSERT INTO public.games VALUES (33, 549, 9);
INSERT INTO public.games VALUES (34, 626, 9);
INSERT INTO public.games VALUES (35, 777, 9);
INSERT INTO public.games VALUES (36, 144, 11);
INSERT INTO public.games VALUES (37, 92, 11);
INSERT INTO public.games VALUES (38, 472, 12);
INSERT INTO public.games VALUES (39, 492, 12);
INSERT INTO public.games VALUES (40, 488, 11);
INSERT INTO public.games VALUES (41, 124, 11);
INSERT INTO public.games VALUES (42, 587, 11);
INSERT INTO public.games VALUES (43, 16, 13);
INSERT INTO public.games VALUES (44, 139, 14);
INSERT INTO public.games VALUES (45, 12, 14);
INSERT INTO public.games VALUES (46, 590, 15);
INSERT INTO public.games VALUES (47, 420, 15);
INSERT INTO public.games VALUES (48, 125, 14);
INSERT INTO public.games VALUES (49, 213, 14);
INSERT INTO public.games VALUES (50, 440, 14);
INSERT INTO public.games VALUES (51, 767, 16);
INSERT INTO public.games VALUES (52, 158, 16);
INSERT INTO public.games VALUES (53, 608, 17);
INSERT INTO public.games VALUES (54, 472, 17);
INSERT INTO public.games VALUES (55, 107, 16);
INSERT INTO public.games VALUES (56, 549, 16);
INSERT INTO public.games VALUES (57, 704, 16);
INSERT INTO public.games VALUES (58, 716, 18);
INSERT INTO public.games VALUES (59, 707, 18);
INSERT INTO public.games VALUES (60, 308, 19);
INSERT INTO public.games VALUES (61, 360, 19);
INSERT INTO public.games VALUES (62, 55, 18);
INSERT INTO public.games VALUES (63, 806, 18);
INSERT INTO public.games VALUES (64, 52, 18);
INSERT INTO public.games VALUES (65, 599, 20);
INSERT INTO public.games VALUES (66, 131, 20);
INSERT INTO public.games VALUES (67, 15, 21);
INSERT INTO public.games VALUES (68, 290, 21);
INSERT INTO public.games VALUES (69, 92, 20);
INSERT INTO public.games VALUES (70, 582, 20);
INSERT INTO public.games VALUES (71, 735, 20);
INSERT INTO public.games VALUES (72, 82, 22);
INSERT INTO public.games VALUES (73, 622, 22);
INSERT INTO public.games VALUES (74, 555, 23);
INSERT INTO public.games VALUES (75, 715, 23);
INSERT INTO public.games VALUES (76, 541, 22);
INSERT INTO public.games VALUES (77, 551, 22);
INSERT INTO public.games VALUES (78, 620, 22);
INSERT INTO public.games VALUES (79, 639, 24);
INSERT INTO public.games VALUES (80, 981, 24);
INSERT INTO public.games VALUES (81, 855, 25);
INSERT INTO public.games VALUES (82, 625, 25);
INSERT INTO public.games VALUES (83, 821, 24);
INSERT INTO public.games VALUES (84, 257, 24);
INSERT INTO public.games VALUES (85, 909, 24);
INSERT INTO public.games VALUES (86, 272, 26);
INSERT INTO public.games VALUES (87, 875, 26);
INSERT INTO public.games VALUES (88, 942, 27);
INSERT INTO public.games VALUES (89, 987, 27);
INSERT INTO public.games VALUES (90, 838, 26);
INSERT INTO public.games VALUES (91, 267, 26);
INSERT INTO public.games VALUES (92, 206, 26);
INSERT INTO public.games VALUES (93, 383, 28);
INSERT INTO public.games VALUES (94, 724, 28);
INSERT INTO public.games VALUES (95, 288, 29);
INSERT INTO public.games VALUES (96, 953, 29);
INSERT INTO public.games VALUES (97, 606, 28);
INSERT INTO public.games VALUES (98, 305, 28);
INSERT INTO public.games VALUES (99, 675, 28);
INSERT INTO public.games VALUES (100, 13, 13);
INSERT INTO public.games VALUES (101, 11, 13);
INSERT INTO public.games VALUES (102, 995, 30);
INSERT INTO public.games VALUES (103, 850, 30);
INSERT INTO public.games VALUES (104, 91, 31);
INSERT INTO public.games VALUES (105, 189, 31);
INSERT INTO public.games VALUES (106, 127, 30);
INSERT INTO public.games VALUES (107, 921, 30);
INSERT INTO public.games VALUES (108, 547, 30);
INSERT INTO public.games VALUES (109, 103, 32);
INSERT INTO public.games VALUES (110, 326, 32);
INSERT INTO public.games VALUES (111, 809, 33);
INSERT INTO public.games VALUES (112, 811, 33);
INSERT INTO public.games VALUES (113, 115, 32);
INSERT INTO public.games VALUES (114, 296, 32);
INSERT INTO public.games VALUES (115, 915, 32);
INSERT INTO public.games VALUES (116, 892, 34);
INSERT INTO public.games VALUES (117, 182, 34);
INSERT INTO public.games VALUES (118, 52, 35);
INSERT INTO public.games VALUES (119, 365, 35);
INSERT INTO public.games VALUES (120, 183, 34);
INSERT INTO public.games VALUES (121, 41, 34);
INSERT INTO public.games VALUES (122, 772, 34);
INSERT INTO public.games VALUES (123, 782, 36);
INSERT INTO public.games VALUES (124, 178, 36);
INSERT INTO public.games VALUES (125, 128, 37);
INSERT INTO public.games VALUES (126, 780, 37);
INSERT INTO public.games VALUES (127, 53, 36);
INSERT INTO public.games VALUES (128, 351, 36);
INSERT INTO public.games VALUES (129, 22, 36);
INSERT INTO public.games VALUES (130, 242, 38);
INSERT INTO public.games VALUES (131, 402, 38);
INSERT INTO public.games VALUES (132, 742, 39);
INSERT INTO public.games VALUES (133, 51, 39);
INSERT INTO public.games VALUES (134, 999, 38);
INSERT INTO public.games VALUES (135, 317, 38);
INSERT INTO public.games VALUES (136, 162, 38);
INSERT INTO public.games VALUES (137, 621, 40);
INSERT INTO public.games VALUES (138, 176, 40);
INSERT INTO public.games VALUES (139, 906, 41);
INSERT INTO public.games VALUES (140, 935, 41);
INSERT INTO public.games VALUES (141, 819, 40);
INSERT INTO public.games VALUES (142, 974, 40);
INSERT INTO public.games VALUES (143, 985, 40);
INSERT INTO public.games VALUES (144, 889, 42);
INSERT INTO public.games VALUES (145, 214, 42);
INSERT INTO public.games VALUES (146, 405, 43);
INSERT INTO public.games VALUES (147, 187, 43);
INSERT INTO public.games VALUES (148, 756, 42);
INSERT INTO public.games VALUES (149, 388, 42);
INSERT INTO public.games VALUES (150, 590, 42);
INSERT INTO public.games VALUES (151, 294, 44);
INSERT INTO public.games VALUES (152, 825, 44);
INSERT INTO public.games VALUES (153, 703, 45);
INSERT INTO public.games VALUES (154, 552, 45);
INSERT INTO public.games VALUES (155, 958, 44);
INSERT INTO public.games VALUES (156, 19, 44);
INSERT INTO public.games VALUES (157, 911, 44);
INSERT INTO public.games VALUES (158, 725, 46);
INSERT INTO public.games VALUES (159, 619, 46);
INSERT INTO public.games VALUES (160, 731, 47);
INSERT INTO public.games VALUES (161, 890, 47);
INSERT INTO public.games VALUES (162, 496, 46);
INSERT INTO public.games VALUES (163, 791, 46);
INSERT INTO public.games VALUES (164, 682, 46);
INSERT INTO public.games VALUES (165, 9, 13);
INSERT INTO public.games VALUES (166, 390, 48);
INSERT INTO public.games VALUES (167, 900, 48);
INSERT INTO public.games VALUES (168, 221, 49);
INSERT INTO public.games VALUES (169, 5, 49);
INSERT INTO public.games VALUES (170, 78, 48);
INSERT INTO public.games VALUES (171, 508, 48);
INSERT INTO public.games VALUES (172, 372, 48);
INSERT INTO public.games VALUES (173, 326, 50);
INSERT INTO public.games VALUES (174, 480, 50);
INSERT INTO public.games VALUES (175, 27, 51);
INSERT INTO public.games VALUES (176, 826, 51);
INSERT INTO public.games VALUES (177, 1002, 50);
INSERT INTO public.games VALUES (178, 963, 50);
INSERT INTO public.games VALUES (179, 530, 50);
INSERT INTO public.games VALUES (180, 455, 52);
INSERT INTO public.games VALUES (181, 90, 52);
INSERT INTO public.games VALUES (182, 573, 53);
INSERT INTO public.games VALUES (183, 452, 53);
INSERT INTO public.games VALUES (184, 639, 52);
INSERT INTO public.games VALUES (185, 681, 52);
INSERT INTO public.games VALUES (186, 522, 52);
INSERT INTO public.games VALUES (187, 126, 54);
INSERT INTO public.games VALUES (188, 151, 54);
INSERT INTO public.games VALUES (189, 703, 55);
INSERT INTO public.games VALUES (190, 204, 55);
INSERT INTO public.games VALUES (191, 784, 54);
INSERT INTO public.games VALUES (192, 544, 54);
INSERT INTO public.games VALUES (193, 913, 54);
INSERT INTO public.games VALUES (194, 459, 56);
INSERT INTO public.games VALUES (195, 217, 56);
INSERT INTO public.games VALUES (196, 742, 57);
INSERT INTO public.games VALUES (197, 60, 57);
INSERT INTO public.games VALUES (198, 930, 56);
INSERT INTO public.games VALUES (199, 629, 56);
INSERT INTO public.games VALUES (200, 160, 56);
INSERT INTO public.games VALUES (201, 854, 58);
INSERT INTO public.games VALUES (202, 456, 58);
INSERT INTO public.games VALUES (203, 803, 59);
INSERT INTO public.games VALUES (204, 36, 59);
INSERT INTO public.games VALUES (205, 625, 58);
INSERT INTO public.games VALUES (206, 497, 58);
INSERT INTO public.games VALUES (207, 251, 58);
INSERT INTO public.games VALUES (208, 161, 60);
INSERT INTO public.games VALUES (209, 741, 60);
INSERT INTO public.games VALUES (210, 505, 61);
INSERT INTO public.games VALUES (211, 509, 61);
INSERT INTO public.games VALUES (212, 754, 60);
INSERT INTO public.games VALUES (213, 195, 60);
INSERT INTO public.games VALUES (214, 146, 60);
INSERT INTO public.games VALUES (215, 424, 62);
INSERT INTO public.games VALUES (216, 318, 62);
INSERT INTO public.games VALUES (217, 500, 63);
INSERT INTO public.games VALUES (218, 154, 63);
INSERT INTO public.games VALUES (219, 447, 62);
INSERT INTO public.games VALUES (220, 908, 62);
INSERT INTO public.games VALUES (221, 484, 62);
INSERT INTO public.games VALUES (222, 771, 64);
INSERT INTO public.games VALUES (223, 416, 64);
INSERT INTO public.games VALUES (224, 473, 65);
INSERT INTO public.games VALUES (225, 571, 65);
INSERT INTO public.games VALUES (226, 147, 64);
INSERT INTO public.games VALUES (227, 307, 64);
INSERT INTO public.games VALUES (228, 704, 64);
INSERT INTO public.games VALUES (229, 515, 66);
INSERT INTO public.games VALUES (230, 498, 66);
INSERT INTO public.games VALUES (231, 741, 67);
INSERT INTO public.games VALUES (232, 739, 67);
INSERT INTO public.games VALUES (233, 608, 66);
INSERT INTO public.games VALUES (234, 570, 66);
INSERT INTO public.games VALUES (235, 413, 66);
INSERT INTO public.games VALUES (236, 185, 68);
INSERT INTO public.games VALUES (237, 897, 68);
INSERT INTO public.games VALUES (238, 131, 69);
INSERT INTO public.games VALUES (239, 672, 69);
INSERT INTO public.games VALUES (240, 846, 68);
INSERT INTO public.games VALUES (241, 193, 68);
INSERT INTO public.games VALUES (242, 522, 68);
INSERT INTO public.games VALUES (243, 411, 70);
INSERT INTO public.games VALUES (244, 969, 70);
INSERT INTO public.games VALUES (245, 741, 71);
INSERT INTO public.games VALUES (246, 577, 71);
INSERT INTO public.games VALUES (247, 489, 70);
INSERT INTO public.games VALUES (248, 69, 70);
INSERT INTO public.games VALUES (249, 207, 70);
INSERT INTO public.games VALUES (250, 808, 142);
INSERT INTO public.games VALUES (251, 445, 142);
INSERT INTO public.games VALUES (252, 968, 144);
INSERT INTO public.games VALUES (253, 303, 144);
INSERT INTO public.games VALUES (254, 495, 145);
INSERT INTO public.games VALUES (255, 108, 145);
INSERT INTO public.games VALUES (256, 494, 144);
INSERT INTO public.games VALUES (257, 541, 144);
INSERT INTO public.games VALUES (258, 254, 144);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1713702578162');
INSERT INTO public.users VALUES (2, 'user_1713702578161');
INSERT INTO public.users VALUES (3, 'user_1713702801936');
INSERT INTO public.users VALUES (4, 'user_1713702801935');
INSERT INTO public.users VALUES (5, 'user_1713702866028');
INSERT INTO public.users VALUES (6, 'user_1713702866027');
INSERT INTO public.users VALUES (7, 'user_1713702954316');
INSERT INTO public.users VALUES (8, 'user_1713702954315');
INSERT INTO public.users VALUES (9, 'user_1713702967449');
INSERT INTO public.users VALUES (10, 'user_1713702967448');
INSERT INTO public.users VALUES (11, 'user_1713702990186');
INSERT INTO public.users VALUES (12, 'user_1713702990185');
INSERT INTO public.users VALUES (13, 'Yrll');
INSERT INTO public.users VALUES (14, 'user_1713703070461');
INSERT INTO public.users VALUES (15, 'user_1713703070460');
INSERT INTO public.users VALUES (16, 'user_1713703093099');
INSERT INTO public.users VALUES (17, 'user_1713703093098');
INSERT INTO public.users VALUES (18, 'user_1713703156853');
INSERT INTO public.users VALUES (19, 'user_1713703156852');
INSERT INTO public.users VALUES (20, 'user_1713703343958');
INSERT INTO public.users VALUES (21, 'user_1713703343957');
INSERT INTO public.users VALUES (22, 'user_1713703367653');
INSERT INTO public.users VALUES (23, 'user_1713703367652');
INSERT INTO public.users VALUES (24, 'user_1713703424038');
INSERT INTO public.users VALUES (25, 'user_1713703424037');
INSERT INTO public.users VALUES (26, 'user_1713703428058');
INSERT INTO public.users VALUES (27, 'user_1713703428057');
INSERT INTO public.users VALUES (28, 'user_1713703461095');
INSERT INTO public.users VALUES (29, 'user_1713703461094');
INSERT INTO public.users VALUES (30, 'user_1713703586468');
INSERT INTO public.users VALUES (31, 'user_1713703586467');
INSERT INTO public.users VALUES (32, 'user_1713703681865');
INSERT INTO public.users VALUES (33, 'user_1713703681864');
INSERT INTO public.users VALUES (34, 'user_1713703981844');
INSERT INTO public.users VALUES (35, 'user_1713703981843');
INSERT INTO public.users VALUES (36, 'user_1713704151150');
INSERT INTO public.users VALUES (37, 'user_1713704151149');
INSERT INTO public.users VALUES (38, 'user_1713704259758');
INSERT INTO public.users VALUES (39, 'user_1713704259757');
INSERT INTO public.users VALUES (40, 'user_1713704267084');
INSERT INTO public.users VALUES (41, 'user_1713704267083');
INSERT INTO public.users VALUES (42, 'user_1713704338315');
INSERT INTO public.users VALUES (43, 'user_1713704338314');
INSERT INTO public.users VALUES (44, 'user_1713704374181');
INSERT INTO public.users VALUES (45, 'user_1713704374180');
INSERT INTO public.users VALUES (46, 'user_1713704405577');
INSERT INTO public.users VALUES (47, 'user_1713704405576');
INSERT INTO public.users VALUES (48, 'user_1713704443394');
INSERT INTO public.users VALUES (49, 'user_1713704443393');
INSERT INTO public.users VALUES (50, 'user_1713704456994');
INSERT INTO public.users VALUES (51, 'user_1713704456993');
INSERT INTO public.users VALUES (52, 'user_1713704575832');
INSERT INTO public.users VALUES (53, 'user_1713704575831');
INSERT INTO public.users VALUES (54, 'user_1713704577784');
INSERT INTO public.users VALUES (55, 'user_1713704577783');
INSERT INTO public.users VALUES (56, 'user_1713704579488');
INSERT INTO public.users VALUES (57, 'user_1713704579487');
INSERT INTO public.users VALUES (58, 'user_1713704581309');
INSERT INTO public.users VALUES (59, 'user_1713704581308');
INSERT INTO public.users VALUES (60, 'user_1713704702802');
INSERT INTO public.users VALUES (61, 'user_1713704702801');
INSERT INTO public.users VALUES (62, 'user_1713704704880');
INSERT INTO public.users VALUES (63, 'user_1713704704879');
INSERT INTO public.users VALUES (64, 'user_1713704706582');
INSERT INTO public.users VALUES (65, 'user_1713704706581');
INSERT INTO public.users VALUES (66, 'user_1713704708661');
INSERT INTO public.users VALUES (67, 'user_1713704708660');
INSERT INTO public.users VALUES (68, 'user_1713704710699');
INSERT INTO public.users VALUES (69, 'user_1713704710698');
INSERT INTO public.users VALUES (70, 'user_1713704712809');
INSERT INTO public.users VALUES (71, 'user_1713704712808');
INSERT INTO public.users VALUES (78, 'user_1713704949945');
INSERT INTO public.users VALUES (79, 'user_1713704949944');
INSERT INTO public.users VALUES (80, 'user_1713704981158');
INSERT INTO public.users VALUES (81, 'user_1713704981157');
INSERT INTO public.users VALUES (82, 'user_1713704987709');
INSERT INTO public.users VALUES (83, 'user_1713704987708');
INSERT INTO public.users VALUES (84, 'user_1713704989048');
INSERT INTO public.users VALUES (85, 'user_1713704989047');
INSERT INTO public.users VALUES (86, 'user_1713704990589');
INSERT INTO public.users VALUES (87, 'user_1713704990588');
INSERT INTO public.users VALUES (88, 'user_1713704992164');
INSERT INTO public.users VALUES (89, 'user_1713704992163');
INSERT INTO public.users VALUES (90, 'user_1713704993674');
INSERT INTO public.users VALUES (91, 'user_1713704993673');
INSERT INTO public.users VALUES (92, 'user_1713704995303');
INSERT INTO public.users VALUES (93, 'user_1713704995302');
INSERT INTO public.users VALUES (94, 'user_1713704997222');
INSERT INTO public.users VALUES (95, 'user_1713704997221');
INSERT INTO public.users VALUES (96, 'user_1713704998742');
INSERT INTO public.users VALUES (97, 'user_1713704998741');
INSERT INTO public.users VALUES (98, 'user_1713705000421');
INSERT INTO public.users VALUES (99, 'user_1713705000420');
INSERT INTO public.users VALUES (100, 'user_1713705207222');
INSERT INTO public.users VALUES (101, 'user_1713705207221');
INSERT INTO public.users VALUES (102, 'user_1713705259901');
INSERT INTO public.users VALUES (103, 'user_1713705259900');
INSERT INTO public.users VALUES (104, 'user_1713705278368');
INSERT INTO public.users VALUES (105, 'user_1713705278367');
INSERT INTO public.users VALUES (106, 'user_1713705309575');
INSERT INTO public.users VALUES (107, 'user_1713705309574');
INSERT INTO public.users VALUES (108, 'user_1713705314730');
INSERT INTO public.users VALUES (109, 'user_1713705314729');
INSERT INTO public.users VALUES (110, 'user_1713705319071');
INSERT INTO public.users VALUES (111, 'user_1713705319070');
INSERT INTO public.users VALUES (112, 'user_1713705324635');
INSERT INTO public.users VALUES (113, 'user_1713705324634');
INSERT INTO public.users VALUES (114, 'user_1713705416900');
INSERT INTO public.users VALUES (115, 'user_1713705416899');
INSERT INTO public.users VALUES (116, 'user_1713705458635');
INSERT INTO public.users VALUES (117, 'user_1713705458634');
INSERT INTO public.users VALUES (118, 'user_1713705464521');
INSERT INTO public.users VALUES (119, 'user_1713705464520');
INSERT INTO public.users VALUES (120, 'user_1713705469722');
INSERT INTO public.users VALUES (121, 'user_1713705469721');
INSERT INTO public.users VALUES (122, 'user_1713705472941');
INSERT INTO public.users VALUES (123, 'user_1713705472940');
INSERT INTO public.users VALUES (124, 'user_1713705481092');
INSERT INTO public.users VALUES (125, 'user_1713705481091');
INSERT INTO public.users VALUES (126, 'user_1713705483388');
INSERT INTO public.users VALUES (127, 'user_1713705483387');
INSERT INTO public.users VALUES (128, 'user_1713705516994');
INSERT INTO public.users VALUES (129, 'user_1713705516993');
INSERT INTO public.users VALUES (130, 'user_1713705519047');
INSERT INTO public.users VALUES (131, 'user_1713705519046');
INSERT INTO public.users VALUES (132, 'user_1713705521682');
INSERT INTO public.users VALUES (133, 'user_1713705521681');
INSERT INTO public.users VALUES (134, 'user_1713707643536');
INSERT INTO public.users VALUES (135, 'user_1713707643535');
INSERT INTO public.users VALUES (136, 'user_1713707662106');
INSERT INTO public.users VALUES (137, 'user_1713707662105');
INSERT INTO public.users VALUES (138, 'user_1713707681783');
INSERT INTO public.users VALUES (139, 'user_1713707681782');
INSERT INTO public.users VALUES (140, 'user_1713707831879');
INSERT INTO public.users VALUES (141, 'user_1713707831878');
INSERT INTO public.users VALUES (142, 'user_1713707835615');
INSERT INTO public.users VALUES (143, 'user_1713707835614');
INSERT INTO public.users VALUES (144, 'user_1713707997546');
INSERT INTO public.users VALUES (145, 'user_1713707997545');
INSERT INTO public.users VALUES (72, 'user_1713704800875');
INSERT INTO public.users VALUES (73, 'user_1713704800874');
INSERT INTO public.users VALUES (74, 'user_1713704803059');
INSERT INTO public.users VALUES (75, 'user_1713704803058');
INSERT INTO public.users VALUES (76, 'user_1713704804731');
INSERT INTO public.users VALUES (77, 'user_1713704804730');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 258, true);


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 145, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (u_id) REFERENCES public.users(u_id);


--
-- PostgreSQL database dump complete
--

