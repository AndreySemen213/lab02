--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    lname character varying(20),
    fname character varying(20),
    mname character varying(20)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: installs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.installs (
    pc_id integer,
    soft_id integer
);


ALTER TABLE public.installs OWNER TO postgres;

--
-- Name: pcs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pcs (
    id integer NOT NULL,
    room_id integer,
    note character varying(100),
    ip_addr character varying(12),
    mac_addr character varying(17)
);


ALTER TABLE public.pcs OWNER TO postgres;

--
-- Name: rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms (
    id integer NOT NULL,
    num integer,
    emp_id integer
);


ALTER TABLE public.rooms OWNER TO postgres;

--
-- Name: soft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.soft (
    id integer NOT NULL,
    sname character varying(150),
    ver character varying(50),
    quant integer
);


ALTER TABLE public.soft OWNER TO postgres;

--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, lname, fname, mname) FROM stdin;
1	Ivanov	Vasily	Petrovich
2	Chelynin	Genagiy	Petrovich
3	Ivanov	Viktor	Petrovich
4	Kiprov	Dmitry	Petrovich
5	Folginov	Alexander	Petrovich
6	Rjenskiy	Petr	Petrovich
7	Ivanov	Svetlana	Petrovich
8	Krasnov	Vasily	Petrovich
9	Shluz	Olga	Petrovich
10	Gorbachev	Oleg	Viktorovich
\.


--
-- Data for Name: installs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.installs (pc_id, soft_id) FROM stdin;
100	1
101	1
102	1
103	1
104	1
105	1
106	1
107	1
108	1
109	1
110	2
111	2
112	2
113	2
114	2
115	2
116	2
117	2
118	2
119	2
120	3
121	3
122	3
123	3
124	3
125	3
126	3
127	3
128	3
129	3
100	4
101	4
102	4
103	4
104	4
105	4
106	4
107	4
108	4
109	4
110	5
111	5
112	5
113	5
114	5
115	5
116	5
117	5
118	5
119	5
120	5
121	5
122	5
123	5
124	5
125	5
126	5
127	5
128	5
129	5
\.


--
-- Data for Name: pcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pcs (id, room_id, note, ip_addr, mac_addr) FROM stdin;
100	15		192.168.0.29	00-17-31-9B-00-00
101	1		192.168.0.1	00-17-31-9B-00-01
102	1		192.168.0.2	00-17-31-9B-00-02
103	2		192.168.0.3	00-17-31-9B-00-03
104	2		192.168.0.4	00-17-31-9B-00-04
105	3		192.168.0.5	00-17-31-9B-00-05
106	3		192.168.0.6	00-17-31-9B-00-06
107	4		192.168.0.7	00-17-31-9B-00-07
108	4		192.168.0.8	00-17-31-9B-00-08
109	5		192.168.0.9	00-17-31-9B-00-09
110	5		192.168.0.10	00-17-31-9B-00-0A
111	6		192.168.0.11	00-17-31-9B-00-0B
112	6		192.168.0.12	00-17-31-9B-00-0C
113	7		192.168.0.13	00-17-31-9B-00-0D
114	7		192.168.0.14	00-17-31-9B-00-0E
115	8		192.168.0.15	00-17-31-9B-00-0F
116	8		192.168.0.16	00-17-31-9B-00-0G
117	9		192.168.0.17	00-17-31-9B-00-11
118	9		192.168.0.18	00-17-31-9B-00-12
119	10		192.168.0.19	00-17-31-9B-00-13
120	10		192.168.0.20	00-17-31-9B-00-14
121	11		192.168.0.21	00-17-31-9B-00-15
122	11		192.168.0.22	00-17-31-9B-00-16
123	12		192.168.0.23	00-17-31-9B-00-17
124	12		192.168.0.24	00-17-31-9B-00-18
125	13		192.168.0.25	00-17-31-9B-00-19
126	13		192.168.0.26	00-17-31-9B-00-1A
127	14		192.168.0.27	00-17-31-9B-00-1B
128	14		192.168.0.28	00-17-31-9B-00-1C
129	15		192.168.0.29	00-17-31-9B-00-1D
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms (id, num, emp_id) FROM stdin;
1	101	1
2	102	1
3	103	1
4	104	2
5	105	2
6	106	2
7	201	2
8	202	3
9	203	4
10	204	5
11	301	6
12	302	7
13	303	8
14	304	9
15	305	10
\.


--
-- Data for Name: soft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.soft (id, sname, ver, quant) FROM stdin;
1	WINDOWS	1.0.10.5	13
2	WINDOWS	1.11.10.5	5
3	LINUX	1.0.11.5	26
4	LINUX	1.0.23.5	7
5	WINDOWS	1.222.10.5	45
\.


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: pcs pcs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT pcs_pkey PRIMARY KEY (id);


--
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- Name: soft soft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soft
    ADD CONSTRAINT soft_pkey PRIMARY KEY (id);


--
-- Name: installs fk_inst_pc_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT fk_inst_pc_id FOREIGN KEY (pc_id) REFERENCES public.pcs(id);


--
-- Name: installs fk_inst_soft_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT fk_inst_soft_id FOREIGN KEY (soft_id) REFERENCES public.soft(id);


--
-- Name: pcs fk_pcs_room_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT fk_pcs_room_id FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- Name: rooms fk_rooms_emp_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT fk_rooms_emp_id FOREIGN KEY (emp_id) REFERENCES public.employees(id);


--
-- PostgreSQL database dump complete
--

