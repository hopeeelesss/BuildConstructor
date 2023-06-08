--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: abilities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.abilities (
    ability_id bigint NOT NULL,
    info character varying(255),
    name character varying(255),
    text character varying(255),
    hero_id bigint
);


ALTER TABLE public.abilities OWNER TO postgres;

--
-- Name: abilities_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.abilities_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.abilities_seq OWNER TO postgres;

--
-- Name: attributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attributes (
    attributes_id bigint NOT NULL,
    agility integer,
    intelligence integer,
    movespeed integer,
    strength integer,
    type character varying(255),
    hero_hero_id bigint,
    item_item_id bigint
);


ALTER TABLE public.attributes OWNER TO postgres;

--
-- Name: attributes_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attributes_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attributes_seq OWNER TO postgres;

--
-- Name: builds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.builds (
    build_id bigint NOT NULL,
    name character varying(255),
    hero_id bigint,
    storage_id bigint
);


ALTER TABLE public.builds OWNER TO postgres;

--
-- Name: builds_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.builds_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.builds_seq OWNER TO postgres;

--
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    game_id bigint NOT NULL,
    name character varying(255),
    user_storage_storage_id bigint
);


ALTER TABLE public.games OWNER TO postgres;

--
-- Name: games_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_seq OWNER TO postgres;

--
-- Name: heroes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.heroes (
    hero_id bigint NOT NULL,
    name character varying(255),
    attributes_id bigint,
    parameters_id bigint
);


ALTER TABLE public.heroes OWNER TO postgres;

--
-- Name: heroes_abilities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.heroes_abilities (
    hero_hero_id bigint NOT NULL,
    abilities_ability_id bigint NOT NULL
);


ALTER TABLE public.heroes_abilities OWNER TO postgres;

--
-- Name: heroes_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.heroes_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.heroes_seq OWNER TO postgres;

--
-- Name: item_build; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item_build (
    build_id bigint NOT NULL,
    item_id bigint NOT NULL
);


ALTER TABLE public.item_build OWNER TO postgres;

--
-- Name: items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items (
    item_id bigint NOT NULL,
    name character varying(255),
    attributes_id bigint,
    parameters_id bigint
);


ALTER TABLE public.items OWNER TO postgres;

--
-- Name: items_build; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items_build (
    item_item_id bigint NOT NULL,
    build_build_id bigint NOT NULL
);


ALTER TABLE public.items_build OWNER TO postgres;

--
-- Name: items_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.items_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.items_seq OWNER TO postgres;

--
-- Name: parameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parameters (
    parameter_id bigint NOT NULL,
    armor integer,
    attack_speed integer,
    damage integer,
    magical_damage_resistance double precision,
    other character varying(255),
    physical_damage_resistance double precision,
    type character varying(255),
    vampirism double precision,
    hero_hero_id bigint,
    item_item_id bigint
);


ALTER TABLE public.parameters OWNER TO postgres;

--
-- Name: parameters_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parameters_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parameters_seq OWNER TO postgres;

--
-- Name: user_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_role (
    user_user_id bigint NOT NULL,
    role character varying(255)
);


ALTER TABLE public.user_role OWNER TO postgres;

--
-- Name: user_storage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_storage (
    storage_id bigint NOT NULL,
    name character varying(255),
    game_id bigint,
    user_id bigint
);


ALTER TABLE public.user_storage OWNER TO postgres;

--
-- Name: user_storage_build; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_storage_build (
    user_build_storage_storage_id bigint NOT NULL,
    build_build_id bigint NOT NULL
);


ALTER TABLE public.user_storage_build OWNER TO postgres;

--
-- Name: user_storage_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_storage_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_storage_seq OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id bigint NOT NULL,
    login character varying(255),
    role character varying(255),
    password character varying(255)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_seq OWNER TO postgres;

--
-- Name: users_user_storage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user_storage (
    user_user_id bigint NOT NULL,
    user_storage_storage_id bigint NOT NULL
);


ALTER TABLE public.users_user_storage OWNER TO postgres;

--
-- Data for Name: abilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.abilities (ability_id, info, name, text, hero_id) FROM stdin;
2	Перемещение на короткую дистанцию, позволяющее ворваться в схватку или быстро из неё сбежать.	BLINK	\N	\N
3	Пассивно увеличивает сопротивление магическому урону. Можно применить, чтобы создать вокруг себя противомагический щит, который полностью блокирует и отражает все направленные заклинания обратно во врага.	COUNTERSPELL	\N	\N
8	Герой прыгает к указанному врагу, а затем с повышенной скоростью атакует его и ближайших противников. На время действия способности герой становится неуязвимым.	OMNISLASH	\N	\N
57	Приводит врага в бешенство, нанося ему урон, пока он кого-нибудь не убьёт или действие способности не закончится.	BATTLE_HUNGER	\N	\N
1	Каждая атака сжигает ману цели и наносит ей урон, равный доле от сожжённой маны. Замедляет жертв, у которых нет маны.	MANA_BREAK	\N	\N
4	Кратковременно оглушает вражескую цель, а затем наносит ей и всем окружающим её противникам урон, пропорциональный числу отсутствующей у неё маны.	MANA_VOID	\N	\N
5	Герой крутится в вихре сокрушительных ударов клинком, становясь невосприимчивым к эффектам, получая +80% к сопротивлению магии и нанося урон врагам поблизости.	BLADE_FURY	\N	\N
6	Призывает тотем, лечащий всех союзников неподалёку и передвигающийся со скоростью 325.0. Объём лечения зависит от максимального здоровья союзника. Действует 25.0 сек.	HEALING_WARD	\N	\N
7	Даёт герою шанс нанести атакой критический урон.	BLADE_DANCE	\N	\N
9	Герой высвобождает дыхание дракона, сжигающее всех врагов на своём пути.	DRAGON_SLAVE	\N	\N
10	Призывает столб пламени, который оглушает врагов и наносит им урон.	LIGHT_STRIKE_ARRAY	\N	\N
11	Даёт герою шанс нанести атакой критический урон.	FIERY_SOUL	\N	\N
12	Выпускает разряд молнии в одного врага, нанося сокрушительный урон.	LAGUNA_BLADE	\N	\N
13	Герой высвобождает дыхание дракона, сжигающее всех врагов на своём пути.	DRAGON_SLAVE	\N	\N
14	Призывает столб пламени, который оглушает врагов и наносит им урон.	LIGHT_STRIKE_ARRAY	\N	\N
15	Slaaaave	FIERY_SOUL	\N	\N
16	Выпускает разряд молнии в одного врага, нанося сокрушительный урон.	LAGUNA_BLADE	\N	\N
56	Герой бросает вызов ближайшим врагам, заставляя их атаковать его, а также получает бонус к броне на время действия способности.	BERSERKERS_CALL	\N	\N
58	После определённого числа полученных атак герой прокручивает вокруг себя топор, нанося чистый урон всем врагам неподалёку.	COUNTER_HELIX	\N	\N
59	Герой находит слабую точку врага и наносит ему чистый урон.	CULLING_BLADE	\N	\N
\.


--
-- Data for Name: attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attributes (attributes_id, agility, intelligence, movespeed, strength, type, hero_hero_id, item_item_id) FROM stdin;
2	0	0	0	0	Item	\N	\N
3	0	0	0	10	Item	\N	\N
4	1	1	0	1	Item	\N	\N
5	0	0	0	3	Item	\N	\N
6	3	0	0	0	Item	\N	\N
52	24	12	310	19	Hero	\N	\N
53	34	14	300	20	Hero	\N	\N
54	23	30	290	20	Hero	\N	\N
55	23	30	290	20	Hero	\N	\N
102	23	30	290	20	Hero	\N	\N
152	0	3	0	0	Item	\N	\N
153	2	2	0	2	Item	\N	\N
154	0	0	0	6	Item	\N	\N
155	6	0	0	0	Item	\N	\N
156	0	6	0	0	Item	\N	\N
157	4	4	0	4	Item	\N	\N
159	20	18	315	25	Hero	\N	\N
\.


--
-- Data for Name: builds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.builds (build_id, name, hero_id, storage_id) FROM stdin;
\.


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games (game_id, name, user_storage_storage_id) FROM stdin;
1	Dota 2	\N
\.


--
-- Data for Name: heroes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.heroes (hero_id, name, attributes_id, parameters_id) FROM stdin;
2	Anti-Mage	52	52
3	Juggernaut	53	53
4	Lina	102	102
53	Axe	159	159
\.


--
-- Data for Name: heroes_abilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.heroes_abilities (hero_hero_id, abilities_ability_id) FROM stdin;
2	1
2	2
2	3
2	4
3	5
3	6
3	7
3	8
4	13
4	14
4	15
4	16
53	56
53	57
53	58
53	59
\.


--
-- Data for Name: item_build; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.item_build (build_id, item_id) FROM stdin;
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items (item_id, name, attributes_id, parameters_id) FROM stdin;
52	Ogre_Axe	3	3
54	Iron_Branch	4	4
55	Gauntlets_of_Strength	5	5
56	Slippers_of_Agility	6	6
102	Mantle_of_Intelligence	152	152
103	Circlet	153	153
104	Belt_of_Strength	154	154
105	Band_of_Elvenskin	155	155
106	Robe_of_the_Magi	156	156
107	Crown	157	157
\.


--
-- Data for Name: items_build; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items_build (item_item_id, build_build_id) FROM stdin;
\.


--
-- Data for Name: parameters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parameters (parameter_id, armor, attack_speed, damage, magical_damage_resistance, other, physical_damage_resistance, type, vampirism, hero_hero_id, item_item_id) FROM stdin;
2	0	0	0	0	string	0	Item	0	\N	\N
3	0	0	0	0	string	0	Item	0	\N	\N
4	0	0	0	0	string	0	Item	0	\N	\N
5	0	0	0	0	string	0	Item	0	\N	\N
6	0	0	0	0	string	0	Item	0	\N	\N
52	0	0	0	0	string	0	Hero	0	\N	\N
53	0	0	0	0	string	0	Hero	0	\N	\N
54	0	0	0	0	string	0	Hero	0	\N	\N
55	0	0	0	0	string	0	Hero	0	\N	\N
102	0	0	0	0	string	0	Hero	0	\N	\N
152	0	0	0	0	string	0	Item	0	\N	\N
153	0	0	0	0	string	0	Item	0	\N	\N
154	0	0	0	0	string	0	Item	0	\N	\N
155	0	0	0	0	string	0	Item	0	\N	\N
156	0	0	0	0	string	0	Item	0	\N	\N
157	0	0	0	0	string	0	Item	0	\N	\N
159	0	0	0	0	string	0	Hero	0	\N	\N
\.


--
-- Data for Name: user_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_role (user_user_id, role) FROM stdin;
1	USER
\.


--
-- Data for Name: user_storage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_storage (storage_id, name, game_id, user_id) FROM stdin;
\.


--
-- Data for Name: user_storage_build; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_storage_build (user_build_storage_storage_id, build_build_id) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, login, role, password) FROM stdin;
89143187	hopeeelesss	USER	\N
1	admin	\N	$2a$10$bwNGQPz5PE/iA4ZMl1/F5uh4q55WoU3zNXsbrvpA3HRgBp68qslz.
\.


--
-- Data for Name: users_user_storage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user_storage (user_user_id, user_storage_storage_id) FROM stdin;
\.


--
-- Name: abilities_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.abilities_seq', 101, true);


--
-- Name: attributes_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attributes_seq', 201, true);


--
-- Name: builds_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.builds_seq', 1, false);


--
-- Name: games_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_seq', 51, true);


--
-- Name: heroes_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.heroes_seq', 101, true);


--
-- Name: items_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.items_seq', 151, true);


--
-- Name: parameters_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parameters_seq', 201, true);


--
-- Name: user_storage_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_storage_seq', 1, false);


--
-- Name: users_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_seq', 1, true);


--
-- Name: abilities abilities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abilities
    ADD CONSTRAINT abilities_pkey PRIMARY KEY (ability_id);


--
-- Name: attributes attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attributes
    ADD CONSTRAINT attributes_pkey PRIMARY KEY (attributes_id);


--
-- Name: builds builds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.builds
    ADD CONSTRAINT builds_pkey PRIMARY KEY (build_id);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: heroes heroes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heroes
    ADD CONSTRAINT heroes_pkey PRIMARY KEY (hero_id);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (item_id);


--
-- Name: parameters parameters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameters
    ADD CONSTRAINT parameters_pkey PRIMARY KEY (parameter_id);


--
-- Name: heroes_abilities uk_30cry4k5tfct4n6e250spg3kr; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heroes_abilities
    ADD CONSTRAINT uk_30cry4k5tfct4n6e250spg3kr UNIQUE (abilities_ability_id);


--
-- Name: users_user_storage uk_efbnsvk44tg7dv9j25xp3l9r2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_storage
    ADD CONSTRAINT uk_efbnsvk44tg7dv9j25xp3l9r2 UNIQUE (user_storage_storage_id);


--
-- Name: user_storage_build uk_giyln3r4b98lo627wdpbctbph; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_storage_build
    ADD CONSTRAINT uk_giyln3r4b98lo627wdpbctbph UNIQUE (build_build_id);


--
-- Name: user_storage user_storage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_storage
    ADD CONSTRAINT user_storage_pkey PRIMARY KEY (storage_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: items fk13c34cy50mda3waf9o7ktw9uh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT fk13c34cy50mda3waf9o7ktw9uh FOREIGN KEY (attributes_id) REFERENCES public.attributes(attributes_id);


--
-- Name: user_storage fk2ii74g9ae47232v39bkjsg2dy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_storage
    ADD CONSTRAINT fk2ii74g9ae47232v39bkjsg2dy FOREIGN KEY (game_id) REFERENCES public.games(game_id);


--
-- Name: user_storage fk3e8j5icjs70mfdahaqrkkgwxb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_storage
    ADD CONSTRAINT fk3e8j5icjs70mfdahaqrkkgwxb FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: user_role fk8gqp8vkivwjo8us69ct7b35vl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fk8gqp8vkivwjo8us69ct7b35vl FOREIGN KEY (user_user_id) REFERENCES public.users(user_id);


--
-- Name: heroes fk8hlcxnphoks8u65vqx4a8q5ky; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heroes
    ADD CONSTRAINT fk8hlcxnphoks8u65vqx4a8q5ky FOREIGN KEY (attributes_id) REFERENCES public.attributes(attributes_id);


--
-- Name: parameters fk8qwl0ly41w9epym2ilnxa9xkw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameters
    ADD CONSTRAINT fk8qwl0ly41w9epym2ilnxa9xkw FOREIGN KEY (hero_hero_id) REFERENCES public.heroes(hero_id);


--
-- Name: builds fk93by5m8mwji58wm0whqdhe5qj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.builds
    ADD CONSTRAINT fk93by5m8mwji58wm0whqdhe5qj FOREIGN KEY (storage_id) REFERENCES public.user_storage(storage_id);


--
-- Name: abilities fk9wtuang3pjng8nx26xq4ffdp4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abilities
    ADD CONSTRAINT fk9wtuang3pjng8nx26xq4ffdp4 FOREIGN KEY (hero_id) REFERENCES public.heroes(hero_id);


--
-- Name: users_user_storage fkbajj82hktg4oewyh3b1n8qm3x; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_storage
    ADD CONSTRAINT fkbajj82hktg4oewyh3b1n8qm3x FOREIGN KEY (user_user_id) REFERENCES public.users(user_id);


--
-- Name: games fkcoq088o0rvdjbf8k262awgk3a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkcoq088o0rvdjbf8k262awgk3a FOREIGN KEY (user_storage_storage_id) REFERENCES public.user_storage(storage_id);


--
-- Name: heroes_abilities fkdk9h4cpbarcgw40ddhmqc4i1b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heroes_abilities
    ADD CONSTRAINT fkdk9h4cpbarcgw40ddhmqc4i1b FOREIGN KEY (hero_hero_id) REFERENCES public.heroes(hero_id);


--
-- Name: items_build fkdytm0avyqfjdp63sqo6mlkggm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items_build
    ADD CONSTRAINT fkdytm0avyqfjdp63sqo6mlkggm FOREIGN KEY (build_build_id) REFERENCES public.builds(build_id);


--
-- Name: item_build fkecn7y269nwd1st1ohosqyw4j5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_build
    ADD CONSTRAINT fkecn7y269nwd1st1ohosqyw4j5 FOREIGN KEY (build_id) REFERENCES public.builds(build_id);


--
-- Name: attributes fkhfh9ahrw196djup72x0c1tjd3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attributes
    ADD CONSTRAINT fkhfh9ahrw196djup72x0c1tjd3 FOREIGN KEY (hero_hero_id) REFERENCES public.heroes(hero_id);


--
-- Name: user_storage_build fkhmsin2f7pisb50ht719j5u6h5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_storage_build
    ADD CONSTRAINT fkhmsin2f7pisb50ht719j5u6h5 FOREIGN KEY (user_build_storage_storage_id) REFERENCES public.user_storage(storage_id);


--
-- Name: items_build fkj3pfjulxgq6xw4eagqtexxe2u; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items_build
    ADD CONSTRAINT fkj3pfjulxgq6xw4eagqtexxe2u FOREIGN KEY (item_item_id) REFERENCES public.items(item_id);


--
-- Name: heroes fkj4o6w19txev1oonlkdqq28fqk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heroes
    ADD CONSTRAINT fkj4o6w19txev1oonlkdqq28fqk FOREIGN KEY (parameters_id) REFERENCES public.parameters(parameter_id);


--
-- Name: attributes fklvf4gr30y2s4n0vcdxug52fll; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attributes
    ADD CONSTRAINT fklvf4gr30y2s4n0vcdxug52fll FOREIGN KEY (item_item_id) REFERENCES public.items(item_id);


--
-- Name: user_storage_build fkmoa75rba855dfdd7t78sv6gev; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_storage_build
    ADD CONSTRAINT fkmoa75rba855dfdd7t78sv6gev FOREIGN KEY (build_build_id) REFERENCES public.builds(build_id);


--
-- Name: parameters fknr48dqhjhoy07waa6cc7wlkmx; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameters
    ADD CONSTRAINT fknr48dqhjhoy07waa6cc7wlkmx FOREIGN KEY (item_item_id) REFERENCES public.items(item_id);


--
-- Name: heroes_abilities fknvqknshoa1druisjcjamj6mv7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heroes_abilities
    ADD CONSTRAINT fknvqknshoa1druisjcjamj6mv7 FOREIGN KEY (abilities_ability_id) REFERENCES public.abilities(ability_id);


--
-- Name: items fkoxcxjrdlcsyl3nxa9qbyvudhk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT fkoxcxjrdlcsyl3nxa9qbyvudhk FOREIGN KEY (parameters_id) REFERENCES public.parameters(parameter_id);


--
-- Name: builds fkpktcuusqwegwwcmfd7fy2qtkp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.builds
    ADD CONSTRAINT fkpktcuusqwegwwcmfd7fy2qtkp FOREIGN KEY (hero_id) REFERENCES public.heroes(hero_id);


--
-- Name: users_user_storage fksx7jm8e1pgq23uhl2m37mfmro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_storage
    ADD CONSTRAINT fksx7jm8e1pgq23uhl2m37mfmro FOREIGN KEY (user_storage_storage_id) REFERENCES public.user_storage(storage_id);


--
-- Name: item_build fktr2usvg5o8p2rkx8fs2n3udby; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_build
    ADD CONSTRAINT fktr2usvg5o8p2rkx8fs2n3udby FOREIGN KEY (item_id) REFERENCES public.items(item_id);


--
-- PostgreSQL database dump complete
--

