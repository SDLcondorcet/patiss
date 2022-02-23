

--
-- TOC entry 205 (class 1259 OID 16931)
-- Name: p_accessoire; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.p_accessoire (
    id_accessoire integer NOT NULL,
    nom_accessoire text NOT NULL,
    prix_accessoire double precision NOT NULL,
    quantite_accessoire integer NOT NULL
);


--
-- TOC entry 204 (class 1259 OID 16929)
-- Name: p_accessoire_id_accessoire_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.p_accessoire_id_accessoire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 204
-- Name: p_accessoire_id_accessoire_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.p_accessoire_id_accessoire_seq OWNED BY public.p_accessoire.id_accessoire;


--
-- TOC entry 201 (class 1259 OID 16909)
-- Name: p_categorie; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.p_categorie (
    id_cat integer NOT NULL,
    nom_cat text NOT NULL,
    visible boolean
);


--
-- TOC entry 200 (class 1259 OID 16907)
-- Name: p_categorie_id_cat_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.p_categorie_id_cat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 200
-- Name: p_categorie_id_cat_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.p_categorie_id_cat_seq OWNED BY public.p_categorie.id_cat;


--
-- TOC entry 209 (class 1259 OID 16958)
-- Name: p_client; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.p_client (
    id_client integer NOT NULL,
    nom_client text NOT NULL,
    rue text NOT NULL,
    numero text NOT NULL,
    email text NOT NULL,
    id_ville integer NOT NULL
);


--
-- TOC entry 208 (class 1259 OID 16956)
-- Name: p_client_id_client_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.p_client_id_client_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 208
-- Name: p_client_id_client_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.p_client_id_client_seq OWNED BY public.p_client.id_client;


--
-- TOC entry 211 (class 1259 OID 16974)
-- Name: p_commande; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.p_commande (
    id_commande integer NOT NULL,
    prix double precision NOT NULL,
    quantite integer NOT NULL,
    date_commande date NOT NULL,
    id_produit integer NOT NULL,
    id_client integer NOT NULL,
    id_accessoire integer
);


--
-- TOC entry 210 (class 1259 OID 16972)
-- Name: p_commande_id_commande_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.p_commande_id_commande_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 210
-- Name: p_commande_id_commande_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.p_commande_id_commande_seq OWNED BY public.p_commande.id_commande;


--
-- TOC entry 207 (class 1259 OID 16942)
-- Name: p_produit; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.p_produit (
    id_produit integer NOT NULL,
    image text,
    prix_produit numeric(15,2) NOT NULL,
    description text,
    nom_produit text NOT NULL,
    id_cat integer
);


--
-- TOC entry 206 (class 1259 OID 16940)
-- Name: p_produit_id_produit_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.p_produit_id_produit_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 206
-- Name: p_produit_id_produit_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.p_produit_id_produit_seq OWNED BY public.p_produit.id_produit;


--
-- TOC entry 203 (class 1259 OID 16920)
-- Name: p_ville; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.p_ville (
    id_ville integer NOT NULL,
    nom_ville text NOT NULL,
    code_postal text NOT NULL
);


--
-- TOC entry 202 (class 1259 OID 16918)
-- Name: p_ville_id_ville_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.p_ville_id_ville_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 202
-- Name: p_ville_id_ville_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.p_ville_id_ville_seq OWNED BY public.p_ville.id_ville;


--
-- TOC entry 2887 (class 2604 OID 16934)
-- Name: p_accessoire id_accessoire; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_accessoire ALTER COLUMN id_accessoire SET DEFAULT nextval('public.p_accessoire_id_accessoire_seq'::regclass);


--
-- TOC entry 2885 (class 2604 OID 16912)
-- Name: p_categorie id_cat; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_categorie ALTER COLUMN id_cat SET DEFAULT nextval('public.p_categorie_id_cat_seq'::regclass);


--
-- TOC entry 2889 (class 2604 OID 16961)
-- Name: p_client id_client; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_client ALTER COLUMN id_client SET DEFAULT nextval('public.p_client_id_client_seq'::regclass);


--
-- TOC entry 2890 (class 2604 OID 16977)
-- Name: p_commande id_commande; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_commande ALTER COLUMN id_commande SET DEFAULT nextval('public.p_commande_id_commande_seq'::regclass);


--
-- TOC entry 2888 (class 2604 OID 16945)
-- Name: p_produit id_produit; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_produit ALTER COLUMN id_produit SET DEFAULT nextval('public.p_produit_id_produit_seq'::regclass);


--
-- TOC entry 2886 (class 2604 OID 16923)
-- Name: p_ville id_ville; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_ville ALTER COLUMN id_ville SET DEFAULT nextval('public.p_ville_id_ville_seq'::regclass);


--
-- TOC entry 3043 (class 0 OID 16931)
-- Dependencies: 205
-- Data for Name: p_accessoire; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3039 (class 0 OID 16909)
-- Dependencies: 201
-- Data for Name: p_categorie; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3047 (class 0 OID 16958)
-- Dependencies: 209
-- Data for Name: p_client; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3049 (class 0 OID 16974)
-- Dependencies: 211
-- Data for Name: p_commande; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3045 (class 0 OID 16942)
-- Dependencies: 207
-- Data for Name: p_produit; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3041 (class 0 OID 16920)
-- Dependencies: 203
-- Data for Name: p_ville; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 204
-- Name: p_accessoire_id_accessoire_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.p_accessoire_id_accessoire_seq', 1, false);


--
-- TOC entry 3063 (class 0 OID 0)
-- Dependencies: 200
-- Name: p_categorie_id_cat_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.p_categorie_id_cat_seq', 1, false);


--
-- TOC entry 3064 (class 0 OID 0)
-- Dependencies: 208
-- Name: p_client_id_client_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.p_client_id_client_seq', 1, false);


--
-- TOC entry 3065 (class 0 OID 0)
-- Dependencies: 210
-- Name: p_commande_id_commande_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.p_commande_id_commande_seq', 1, false);


--
-- TOC entry 3066 (class 0 OID 0)
-- Dependencies: 206
-- Name: p_produit_id_produit_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.p_produit_id_produit_seq', 1, false);


--
-- TOC entry 3067 (class 0 OID 0)
-- Dependencies: 202
-- Name: p_ville_id_ville_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.p_ville_id_ville_seq', 1, false);


--
-- TOC entry 2896 (class 2606 OID 16939)
-- Name: p_accessoire p_accessoire_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_accessoire
    ADD CONSTRAINT p_accessoire_pkey PRIMARY KEY (id_accessoire);


--
-- TOC entry 2892 (class 2606 OID 16917)
-- Name: p_categorie p_categorie_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_categorie
    ADD CONSTRAINT p_categorie_pkey PRIMARY KEY (id_cat);


--
-- TOC entry 2900 (class 2606 OID 16966)
-- Name: p_client p_client_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_client
    ADD CONSTRAINT p_client_pkey PRIMARY KEY (id_client);


--
-- TOC entry 2902 (class 2606 OID 16979)
-- Name: p_commande p_commande_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_commande
    ADD CONSTRAINT p_commande_pkey PRIMARY KEY (id_commande);


--
-- TOC entry 2898 (class 2606 OID 16950)
-- Name: p_produit p_produit_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_produit
    ADD CONSTRAINT p_produit_pkey PRIMARY KEY (id_produit);


--
-- TOC entry 2894 (class 2606 OID 16928)
-- Name: p_ville p_ville_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_ville
    ADD CONSTRAINT p_ville_pkey PRIMARY KEY (id_ville);


--
-- TOC entry 2904 (class 2606 OID 16967)
-- Name: p_client p_client_id_ville_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_client
    ADD CONSTRAINT p_client_id_ville_fkey FOREIGN KEY (id_ville) REFERENCES public.p_ville(id_ville);


--
-- TOC entry 2907 (class 2606 OID 16990)
-- Name: p_commande p_commande_id_accessoire_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_commande
    ADD CONSTRAINT p_commande_id_accessoire_fkey FOREIGN KEY (id_accessoire) REFERENCES public.p_accessoire(id_accessoire);


--
-- TOC entry 2906 (class 2606 OID 16985)
-- Name: p_commande p_commande_id_client_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_commande
    ADD CONSTRAINT p_commande_id_client_fkey FOREIGN KEY (id_client) REFERENCES public.p_client(id_client);


--
-- TOC entry 2905 (class 2606 OID 16980)
-- Name: p_commande p_commande_id_produit_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_commande
    ADD CONSTRAINT p_commande_id_produit_fkey FOREIGN KEY (id_produit) REFERENCES public.p_produit(id_produit);


--
-- TOC entry 2903 (class 2606 OID 16951)
-- Name: p_produit p_produit_id_cat_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.p_produit
    ADD CONSTRAINT p_produit_id_cat_fkey FOREIGN KEY (id_cat) REFERENCES public.p_categorie(id_cat);


-- Completed on 2022-02-15 12:02:27

--
-- PostgreSQL database dump complete
--

