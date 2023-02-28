--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)

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
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO serbus;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO serbus;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO serbus;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO serbus;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO serbus;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO serbus;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ad_photos; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.ad_photos (
    id bigint NOT NULL,
    ad_id bigint NOT NULL,
    image character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ad_photos OWNER TO serbus;

--
-- Name: ad_photos_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.ad_photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ad_photos_id_seq OWNER TO serbus;

--
-- Name: ad_photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.ad_photos_id_seq OWNED BY public.ad_photos.id;


--
-- Name: ads; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.ads (
    id bigint NOT NULL,
    title character varying,
    price numeric,
    car_make_id bigint NOT NULL,
    car_model_id bigint NOT NULL,
    year integer,
    mileage integer,
    vin character varying,
    body_type_id bigint NOT NULL,
    fuel_type_id bigint NOT NULL,
    kw integer,
    horsepower integer,
    ccm integer,
    transmission_type_id bigint NOT NULL,
    consumption character varying,
    color character varying,
    description text,
    country_id bigint NOT NULL,
    city_id bigint NOT NULL,
    address character varying,
    first_name character varying,
    last_name character varying,
    email character varying,
    phone_number character varying,
    website character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id integer,
    condition_id bigint NOT NULL
);


ALTER TABLE public.ads OWNER TO serbus;

--
-- Name: ads_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.ads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ads_id_seq OWNER TO serbus;

--
-- Name: ads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.ads_id_seq OWNED BY public.ads.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO serbus;

--
-- Name: body_types; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.body_types (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.body_types OWNER TO serbus;

--
-- Name: body_types_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.body_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.body_types_id_seq OWNER TO serbus;

--
-- Name: body_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.body_types_id_seq OWNED BY public.body_types.id;


--
-- Name: car_makes; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.car_makes (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.car_makes OWNER TO serbus;

--
-- Name: car_makes_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.car_makes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.car_makes_id_seq OWNER TO serbus;

--
-- Name: car_makes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.car_makes_id_seq OWNED BY public.car_makes.id;


--
-- Name: car_models; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.car_models (
    id bigint NOT NULL,
    name character varying,
    car_make_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.car_models OWNER TO serbus;

--
-- Name: car_models_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.car_models_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.car_models_id_seq OWNER TO serbus;

--
-- Name: car_models_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.car_models_id_seq OWNED BY public.car_models.id;


--
-- Name: cities; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.cities (
    id bigint NOT NULL,
    name character varying,
    country_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    postcode character varying
);


ALTER TABLE public.cities OWNER TO serbus;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_id_seq OWNER TO serbus;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- Name: conditions; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.conditions (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.conditions OWNER TO serbus;

--
-- Name: conditions_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.conditions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conditions_id_seq OWNER TO serbus;

--
-- Name: conditions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.conditions_id_seq OWNED BY public.conditions.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.countries (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.countries OWNER TO serbus;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO serbus;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: fuel_types; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.fuel_types (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.fuel_types OWNER TO serbus;

--
-- Name: fuel_types_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.fuel_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fuel_types_id_seq OWNER TO serbus;

--
-- Name: fuel_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.fuel_types_id_seq OWNED BY public.fuel_types.id;


--
-- Name: makes; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.makes (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.makes OWNER TO serbus;

--
-- Name: makes_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.makes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.makes_id_seq OWNER TO serbus;

--
-- Name: makes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.makes_id_seq OWNED BY public.makes.id;


--
-- Name: models; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.models (
    id bigint NOT NULL,
    name character varying,
    make_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.models OWNER TO serbus;

--
-- Name: models_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.models_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.models_id_seq OWNER TO serbus;

--
-- Name: models_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.models_id_seq OWNED BY public.models.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO serbus;

--
-- Name: transmission_types; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.transmission_types (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.transmission_types OWNER TO serbus;

--
-- Name: transmission_types_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.transmission_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transmission_types_id_seq OWNER TO serbus;

--
-- Name: transmission_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.transmission_types_id_seq OWNED BY public.transmission_types.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: serbus
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    first_name character varying,
    last_name character varying
);


ALTER TABLE public.users OWNER TO serbus;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: serbus
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO serbus;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serbus
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: ad_photos id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.ad_photos ALTER COLUMN id SET DEFAULT nextval('public.ad_photos_id_seq'::regclass);


--
-- Name: ads id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.ads ALTER COLUMN id SET DEFAULT nextval('public.ads_id_seq'::regclass);


--
-- Name: body_types id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.body_types ALTER COLUMN id SET DEFAULT nextval('public.body_types_id_seq'::regclass);


--
-- Name: car_makes id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.car_makes ALTER COLUMN id SET DEFAULT nextval('public.car_makes_id_seq'::regclass);


--
-- Name: car_models id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.car_models ALTER COLUMN id SET DEFAULT nextval('public.car_models_id_seq'::regclass);


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- Name: conditions id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.conditions ALTER COLUMN id SET DEFAULT nextval('public.conditions_id_seq'::regclass);


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Name: fuel_types id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.fuel_types ALTER COLUMN id SET DEFAULT nextval('public.fuel_types_id_seq'::regclass);


--
-- Name: makes id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.makes ALTER COLUMN id SET DEFAULT nextval('public.makes_id_seq'::regclass);


--
-- Name: models id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.models ALTER COLUMN id SET DEFAULT nextval('public.models_id_seq'::regclass);


--
-- Name: transmission_types id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.transmission_types ALTER COLUMN id SET DEFAULT nextval('public.transmission_types_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
20	images	Ad	6	20	2023-02-25 21:09:50.385312
21	images	Ad	6	21	2023-02-25 21:09:50.390601
22	images	Ad	6	22	2023-02-25 21:09:50.39532
23	images	Ad	6	23	2023-02-25 21:09:50.40004
24	images	Ad	6	24	2023-02-25 21:09:50.405484
25	images	Ad	6	25	2023-02-25 21:09:50.410282
26	images	Ad	6	26	2023-02-25 21:09:50.415209
27	images	Ad	6	27	2023-02-25 21:09:50.419917
28	images	Ad	6	28	2023-02-25 21:09:50.424277
29	images	Ad	6	29	2023-02-25 21:09:50.428872
30	images	Ad	7	30	2023-02-25 22:19:26.549946
31	images	Ad	7	31	2023-02-25 22:19:26.555054
32	images	Ad	7	32	2023-02-25 22:19:26.559903
33	images	Ad	7	33	2023-02-25 22:19:26.564561
34	images	Ad	7	34	2023-02-25 22:19:26.569207
35	images	Ad	7	35	2023-02-25 22:19:26.573821
36	images	Ad	7	36	2023-02-25 22:19:26.578423
37	images	Ad	7	37	2023-02-25 22:19:26.582679
38	images	Ad	7	38	2023-02-25 22:19:26.586992
39	images	Ad	8	39	2023-02-25 22:36:06.183795
40	images	Ad	8	40	2023-02-25 22:36:06.188756
41	images	Ad	8	41	2023-02-25 22:36:06.193596
42	images	Ad	8	42	2023-02-25 22:36:06.19814
43	images	Ad	8	43	2023-02-25 22:36:06.203114
44	images	Ad	8	44	2023-02-25 22:36:06.207737
45	images	Ad	8	45	2023-02-25 22:36:06.212111
46	images	Ad	8	46	2023-02-25 22:36:06.216254
47	images	Ad	8	47	2023-02-25 22:36:06.220416
48	images	Ad	8	48	2023-02-25 22:36:06.224712
49	images	Ad	9	49	2023-02-25 22:49:12.352808
50	images	Ad	9	50	2023-02-25 22:49:12.357271
51	images	Ad	9	51	2023-02-25 22:49:12.361659
52	images	Ad	9	52	2023-02-25 22:49:12.36618
53	images	Ad	9	53	2023-02-25 22:49:12.370759
54	images	Ad	9	54	2023-02-25 22:49:12.375609
55	images	Ad	9	55	2023-02-25 22:49:12.380137
56	images	Ad	9	56	2023-02-25 22:49:12.384765
57	images	Ad	10	57	2023-02-26 00:47:17.412444
58	images	Ad	10	58	2023-02-26 00:47:17.417161
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
20	8fd3yykcf19queq2sejdzfg00peo	1067643.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	115322	eedEGvL/uTy/4f+l21iF6g==	2023-02-25 21:09:50.38243
21	vwsa2ex0mtvpox4jdsk6iad1uekv	2067661.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	123087	wO44DvrjG7xYxsoaxBZK2w==	2023-02-25 21:09:50.388384
22	xkxl4igwt0kjwx6q44b3rt3l0o8f	3067681.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	101953	cshbjicXJzYln8xzgrohyA==	2023-02-25 21:09:50.393111
23	ud8zj8f53u5jbmigoi1agszqc37r	4067695.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	93641	vjv/1ukSFBiq6Z1TOGbYsw==	2023-02-25 21:09:50.397852
24	vs5mx00xem63h94kjmftifk0k96p	5067711.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	94966	eW2YAanstBWO0rZd0aSClA==	2023-02-25 21:09:50.402912
25	ei3logf427vgbil9w08mfnxcygh2	6067724.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	128548	7YbiqBo47pHwsyt9aAGk9w==	2023-02-25 21:09:50.408208
26	s2vtw7ve5t7gxtpdmxfsk3i9ud0f	7067741.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	104837	u6F2MCOBV9WBjKLQr/GZpg==	2023-02-25 21:09:50.412748
27	pgy8xrl8116atspfhmmp3tjupiyl	8067752.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	118913	fszWOnnCDUAmGARkdQjyKQ==	2023-02-25 21:09:50.417928
28	ic46qq237yygov2oynu2pq3mlw8n	9067763.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	90279	k6Y5kyL5ZURKAKGkCwkpbw==	2023-02-25 21:09:50.422369
29	uemc2ieramt53ybp1femk4wauupy	10067772.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	114259	ff7IUnbLUgVZdtSUNsbdTQ==	2023-02-25 21:09:50.426603
30	06snx1z1kp3lrpcmj0jksccl7vpu	1079354.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	139520	G3rPFls08LJYt50ONyDqgQ==	2023-02-25 22:19:26.547616
31	yzcu8y09y7ykvhg757s16i1yrq66	2079364.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	128014	+5lrNgM+vXhZSe1ODm1rhA==	2023-02-25 22:19:26.552731
32	vl9v10uetdxtmuxi8z3mj7vwbiix	3079375.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	134662	EcB7QYQllk+R4c3kKHLt7A==	2023-02-25 22:19:26.557663
33	629atje8q449t9r9q05s2st68uvs	4079385.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	122927	j34DsM7O5s30hjRZh1l/2A==	2023-02-25 22:19:26.562278
34	inhccq1zotiwiatsesgbbuinzl78	5079394.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	134281	nvpEanqxbwBj4eBJAC6fQw==	2023-02-25 22:19:26.566938
35	8btgp3djb7rpfujyodw4nbze0p31	7079416.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	136797	/5zrDOPf6UgHtDA/IH//Tw==	2023-02-25 22:19:26.571574
36	iw0fhfwxpfbmyoz458t7pzkx9aor	9079438.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	136460	FCDXKWlWxb1gjibfqP6h4g==	2023-02-25 22:19:26.576265
37	0ejzfada5z8iy94faifni3f2sb7y	10079450.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	104813	ykVZS55IthXfIpnS9Lp84w==	2023-02-25 22:19:26.580652
38	cefc7g1o1w6unwci5l2t6uytmthx	13079477.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	118172	GS6db5SQuzdx/UklpF0jzw==	2023-02-25 22:19:26.584987
39	rzd4uj2zj5o7qd9y9dxgvekxxe4v	1081471_HD.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	306539	E9AwUwMKtcwij8KdGdqmzA==	2023-02-25 22:36:06.181017
40	a6bw242ec21i6vb3b7zykzc6xbkl	2081487_HD.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	370645	Mal/tbqt7OeLSTtDLvWodw==	2023-02-25 22:36:06.186449
41	kb2yf0moykf2ekp7st167lvvf0wi	3081499_HD.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	274039	nwuj2DbLfavpQ0NzQcGqOQ==	2023-02-25 22:36:06.191416
42	icvw80uasfcpts89q1expzv7d72i	4081500_HD.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	335916	rhUip2L/14X5Bb8PNYs40w==	2023-02-25 22:36:06.196093
43	4qfiwocyd06zuenx6se2r4fmgluv	8081513_HD.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	322806	yIybweBBxgA1GrzMQ/cF2Q==	2023-02-25 22:36:06.200925
44	7m1dvdjp17y5ygad62hqiebd1tx3	9081523_HD.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	362391	NwJQWpL+JytAC9waIONJbg==	2023-02-25 22:36:06.205737
45	ow7jf8scul409wnwm3lckga5kat3	11081533_HD.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	430273	Ra7zUit0RaOZiBT31bzonw==	2023-02-25 22:36:06.209956
46	a5sxg7r5xkcgjafgfaef3ht48x1o	12081533_HD.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	436369	n90Sep8yYKCq1p6eE2n70A==	2023-02-25 22:36:06.214255
47	qbvdcz8yr212optr49crqjg0a5pk	15081539_HD.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	444365	UY3fHyuV2HVLKupVelwBZw==	2023-02-25 22:36:06.218391
48	la7c20kinudgm8i205aeqd5e3ajm	20081527_HD.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	315808	4PI8lDxrKpAx48rcxEF9QA==	2023-02-25 22:36:06.222708
49	hse3yqvtfkqqcs3gpwmnf9x9mh8y	1078741.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	110827	xaw+HCEKeQjCb7dBNBjprg==	2023-02-25 22:49:12.350205
50	svdihi26w9go44dayr2usacfysgb	2078756.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	117578	fHKgEp2RtzlE0vXcU25dWg==	2023-02-25 22:49:12.355289
51	1vwirj3phxil8bqcs37eu8lrnumy	3078786.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	103796	NnH++iIhGiUic0ASdX+Rxw==	2023-02-25 22:49:12.359868
52	rtqpt3z9pzkf67uosdf0mtl1iyiz	4078832.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	68817	zhAjtDDjYDGPtnOvEW2TiA==	2023-02-25 22:49:12.363956
53	wxr0918wfr9i3hywgsfs1z0y04i6	5078846.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	30364	zsYwaI7gOoZMXUPLgWxsxQ==	2023-02-25 22:49:12.368552
54	ucqemtalyok6qhixzwc6ex9f9mni	6078856.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	46535	+Ymfvs7FCFJLJdP2Al7wJA==	2023-02-25 22:49:12.373208
55	vsm8fi8h48uul1h8qwj4r7qgfnlb	7078873.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	58038	K6CIv9Em+eXqVHyhS9t74g==	2023-02-25 22:49:12.377821
56	j6s9pueebfu7vmskzt0vwcqgd6jm	8078893.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	86875	KI8z9SEn4YUv9IqEUNj6dw==	2023-02-25 22:49:12.382503
57	vywljjk8l229zozxwqa03pdwakbs	corba.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	67604	k9i9J1QQjGUTi2LOh8acQw==	2023-02-26 00:47:17.410032
58	ddbrfnn3900xr8467psetndteci5	corba1.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	419480	d3VJFOGehju1CWH8W0L62Q==	2023-02-26 00:47:17.415011
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: ad_photos; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.ad_photos (id, ad_id, image, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: ads; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.ads (id, title, price, car_make_id, car_model_id, year, mileage, vin, body_type_id, fuel_type_id, kw, horsepower, ccm, transmission_type_id, consumption, color, description, country_id, city_id, address, first_name, last_name, email, phone_number, website, created_at, updated_at, user_id, condition_id) FROM stdin;
6	Volkswagen Passat Variant 2.0 TDI Highline	3690.0	69	1274	2007	0	/	3	2	0	0	0	1	0	Ni podatka	Ni opisa	1	327	/	Din	Bećarević	din.becarevic@scv.si	070123456	Ni podatka	2023-02-25 21:09:50.378592	2023-02-25 21:09:50.430648	1	2
7	BMW serija 1: 118d+5.VRAT+XENON+SPORT SEDE+ALU+M VOLAN+	2950.0	8	92	2005	0		2	2	90	122	1995	1	6	Temno srebrna metalik	💥BMW 118 d💥\r\n\r\n📌ALU PLATIŠČA\r\n📌DOBRE PNEVMATIKE\r\n\r\n\r\n◾SERVO VOLAN -\r\n◾EL.POMIK STEKEL -\r\n◾ROČNI 6 STOPENJSKI MENJALNIK -\r\n◾M VOLAN -\r\n◾XENON LUČI\r\n◾ŠPORTNI SEDEŽI -\r\n◾CENTRALNO ZAKLEPANJE Z DALJ. -\r\n◾AIR.BAG -\r\n◾DVOCONSKA AVTO.KLIMA -\r\n◾CD RADIO -\r\n◾ZAVORNI SISTEM (ABS) -\r\n◾ITD...\r\n\r\n\r\n•VOZILO JE LEPO OHRANJEN\r\n•MOŽNOST MENJAVE\r\n\r\n\r\n💥MOŽNOST FINANCIRANJE TUDI ZA TUJCE BREZ POLOGA💥\r\n\r\n•POGODBA O ZAPOSLITVI ZA NEDOLOČEN ČAS\r\n•ZADNJE 3 PLAČILNE LISTE\r\n•ZADNJE 3 BANČNE IZPISKE\r\n•OSEBNI DOKUMENT\r\n•VOZNIŠKO DOVOLJENJE\r\n•DAVČNA ŠTEVILKA\r\n•BANČNA KARTICA\r\n•VIZA ZA BIVANJE (TUJCI)\r\n\r\nZA OGLED OBVEZNA PREDHODNA NAJAVA\r\nVOZILO JE V KOMISIJISKI PRODAJI\r\n\r\nMOŽNOST NAPAK PRI AVTOMATSKEM VNOSU PODATKOV-ZA TOČNE PODATKE O VOZILU SE OBRNITE NA PRODAJALCA. ZA PISNE NAPAKE NE ODGOVARJAMO...................	1	190		Din	Bećarević	din.becarevic@scv.si	070123456		2023-02-25 22:19:26.543264	2023-02-25 22:19:26.588835	1	2
8	BMW serija 3 Touring: 320dA xDrive M Paket|LED|ACC|LIVE-C|KAM|WEBASTO|F1	35990.0	8	96	2020	116000	56H4G54G	3	2	140	190	1995	2	8	temno siva metalik	▪︎ ODLIČNO OHRANJENO VOZILO\r\n▪︎ REDNO SERVISIRANO NA BMW SERVISU\r\n▪︎ DIGITALNI ZAPIS SERVISOV\r\n▪︎ ZNANA ZGODOVINA VOZILA\r\n▪︎ NEPOŠKODOVANO\r\n▪︎ 2 KLJUČA\r\n▪︎ NEMŠKO POREKLO\r\n____________________________________________________________\r\n\r\n• M SPORTPAKET PLUS\r\n• BMW INDIVIDUAL SCHADOWLINE\r\n• M AERODYNAMIKPAKET\r\n____________________________________________________________\r\n\r\n- BMW LED ŽAROMETI\r\n- POMOČNIK ZA DOLGE LUČI\r\n- NAVIGACIJSKI SISTEM PROFESSIONAL\r\n- NAVIGACIJSKI PAKET Connected-Drive\r\n- ADAPTIVNI TEMPOMAT-ACC-DISTRONIC\r\n- WEBASTO-OGREVANJE VOZILA NA MESTU\r\n- BMW LIVE COCKPIT\r\n- BMW DRIVING ASSISTANT PROFESSIONAL\r\n- BMW LANE ASSISTENT\r\n- BMW SIDE ASSISTENT\r\n- BMW EFFECITY DYNAMICS\r\n- BMW KEYLESS GO\r\n- BMW ACTIVE GUARD PLUS\r\n- APPLE CARPLAY+ANDROID AUTO\r\n- DELNO USNJE-ALKANTARA\r\n- OGREVANA SEDEŽA SPREDAJ\r\n- M ŠPORTNI SEDEŽI\r\n- M ADAPTIVNO ŠPORTNO PODVOZJE\r\n- M ČRNa STROPNA OBLOGA\r\n- M LITA PLATIŠČA 19 COL-BLACK\r\n- M ŠPORTNI USNJEN VOLAN\r\n- F1 OBVOLANSKE PRESTAVE\r\n- OGREVAN VOLANSKI OBROČ\r\n- PARKIRNI SENZORJI SPREDAJ IN ZADAJ\r\n- KAMERA ZA VZVRATNO VOŽNJO\r\n- ASISTENCA ZA POMOČ PRI PARKIRANJU\r\n- AMBIETALNA OSVETLJAVA NOTRANJOSTI\r\n- ZVOČNI SISTEM HARMAN KARDON\r\n- DAB TUNER-DIG. RADIJSKI SPREJEMNIK\r\n- WLAN HOTSPOT\r\n- ALU DODAKI V NOTRANJOSTI\r\n- SAMOZATEMNITVENA VZVRATNA OGLEDALA\r\n- EL. NASTAVLJIVA-OGREVANA-POKLOPNA ST. OGLEDALA\r\n- MOČNEJE TONIRANA ZADNJA STEKLA\r\n- EL. POKROV PRTLJAŽNIKA\r\n- ORIGINAL VLEČNA KLJUKA\r\n__________________________________________________________\r\n\r\nKONTAKT:\r\n\r\n⇨ GSM: 031/77-66-77\r\n⇨ Viber + WhatsApp: 00386/31776677\r\n⇨ Email: info@in-ti.si\r\n__________________________________________________________\r\n\r\nNAŠE STORITVE:\r\n\r\n⇨ RAZLIČNE OBLIKE FINANCIRANJA\r\n- Možnost financiranja z 20% pologom na 96 mesecev.\r\n- Možnost financiranja za tujce z začasnim bivanjem.\r\n- Možnost hitrega kredita za državljane RS-do 12.000€.\r\n\r\n⇨ MOŽNOST MENJAVE STARO ZA STARO\r\n\r\n⇨ ODKUP VAŠEGA RABLJENEGA VOZILA\r\n\r\n⇨ UVOZ VOZIL PO NAROČILU\r\n\r\n⇨ VOZILO JE V TOVARNIŠKI GARANCIJI.\r\n__________________________________________________________\r\n\r\nVSE NA ENEM MESTU:\r\n\r\n⇨ ZAVAROVANJE VOZILA\r\n\r\n⇨ REGISTRACIJA VOZILA\r\n\r\n⇨ TEHNIČNI PREGLED VOZILA\r\n\r\n⇨ ODJAVA/PRIJAVA VOZILA\r\n___________________________________________________________\r\n\r\nMožnost napak pri vnosu podatkov. 	1	347	Ljubljanska cesta 100	Din	Bećarević	din.becarevic@scv.si	031 / 776 - 677 	http://www.avto.net/IN-TI 	2023-02-25 22:36:06.176372	2023-02-25 22:36:06.226533	1	2
9	Fiat Punto 1.4 Multiair 16v S S Sport	5800.0	20	435	2011	147000	K543B3JHV54HG345FV	2	1	77	105	1368	1	6	Bela	Avtomobil je za svojo starost odlično ohranjen, saj je bil ves čas garažiran (garaža, ne nadstrešek), poleg tega se je zanj zgledno skrbelo in ga lepo vozilo. Seveda se najde tu in tam kakšna praska, ampak ni večjega. Vse, še posebej motor, deluje kot mora\r\n\r\nVes čas je v lasti naše družine. Uradno smo 2. lastniki, saj je bil 1. lastnik leasingodajalec (1 mesec).\r\n\r\nIma močnejši 105-konjski motor, ki jih praktično ni na trgu, zaradi česar se bistveno bolje vozi. Poleg tega ima praktično vso opremo (boljši sedeži, avtomatska 2-conska klimatska naprava, AUX priključek, multifunkcijski volan, ALU platišča R16).\r\n\r\nJe redno servisiran (1x letno oz. na 15.000 km), na 120.000 km je bil opravljen tudi velik servis. Vse je razvidno iz priložene servisne dokumentacije.\r\n\r\nPoleg zimskih gum (Hankook Winter I Cept RS2 W452) so priložene tudi letne gume (Pirelli Cinturato P1 Verde). Oba kompleta gum sta - po mnenju vulkanizerja - vozna še eno sezono (2023/2024).\r\n\r\nDodatno:\r\n- novi brasilci spredaj in zadaj (Bosch Aerotwin),\r\n- gumijasti tepihi spredaj in zadaj (Glerding),\r\n- praktično poln tank goriva (80 %),\r\n- generalno očiščen,\r\n- na prodajo čaka v garaži.\r\n\r\nProdaja se vrši po pooblaščencu. 	1	298	Cesta odl5	Din	Bećarević	din.becarevic@scv.si	031 211 356	odlicno5.si	2023-02-25 22:49:12.346472	2023-02-25 22:49:12.386835	1	2
10	test 1	12211.0	20	431	1111	1111	11e1dd23d2	3	1	12	12	12	1	5	asdada	dasadads	1	25	sdadd	Din	Bećarević	din.becarevic@scv.si	123123	adasdasd	2023-02-26 00:47:17.405993	2023-02-28 05:11:26.695619	1	2
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2023-02-23 07:05:19.052553	2023-02-23 07:05:19.052553
\.


--
-- Data for Name: body_types; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.body_types (id, name, created_at, updated_at) FROM stdin;
1	Limuzina	2023-02-23 07:44:12.481751	2023-02-23 07:44:12.481751
2	Kombilimuzina	2023-02-23 07:44:12.500108	2023-02-23 07:44:12.500108
3	Karavan	2023-02-23 07:44:12.519459	2023-02-23 07:44:12.519459
4	Enoprostorec	2023-02-23 07:44:12.534824	2023-02-23 07:44:12.534824
5	Cupe	2023-02-23 07:44:12.549886	2023-02-23 07:44:12.549886
6	Cabrio	2023-02-23 07:44:12.566373	2023-02-23 07:44:12.566373
7	SUV	2023-02-23 07:44:13.329541	2023-02-23 07:44:13.329541
8	Pick-up	2023-02-23 07:44:13.335592	2023-02-23 07:44:13.335592
\.


--
-- Data for Name: car_makes; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.car_makes (id, name, created_at, updated_at) FROM stdin;
1	Acura	2023-02-23 07:59:20.340949	2023-02-23 07:59:20.340949
2	Alfa Romeo	2023-02-23 07:59:20.36216	2023-02-23 07:59:20.36216
3	AMC	2023-02-23 07:59:20.378043	2023-02-23 07:59:20.378043
4	Aston Martin	2023-02-23 07:59:20.397089	2023-02-23 07:59:20.397089
5	Audi	2023-02-23 07:59:20.412231	2023-02-23 07:59:20.412231
6	Avanti	2023-02-23 07:59:20.426455	2023-02-23 07:59:20.426455
7	Bentley	2023-02-23 07:59:20.443554	2023-02-23 07:59:20.443554
8	BMW	2023-02-23 07:59:20.457037	2023-02-23 07:59:20.457037
9	Buick	2023-02-23 07:59:20.472725	2023-02-23 07:59:20.472725
10	Cadillac	2023-02-23 07:59:20.488229	2023-02-23 07:59:20.488229
11	Chevrolet	2023-02-23 07:59:20.503381	2023-02-23 07:59:20.503381
12	Chrysler	2023-02-23 07:59:20.517985	2023-02-23 07:59:20.517985
13	Daewoo	2023-02-23 07:59:20.533101	2023-02-23 07:59:20.533101
14	Daihatsu	2023-02-23 07:59:20.549308	2023-02-23 07:59:20.549308
15	Datsun	2023-02-23 07:59:20.56621	2023-02-23 07:59:20.56621
16	DeLorean	2023-02-23 07:59:20.58267	2023-02-23 07:59:20.58267
17	Dodge	2023-02-23 07:59:20.59878	2023-02-23 07:59:20.59878
18	Eagle	2023-02-23 07:59:20.61689	2023-02-23 07:59:20.61689
19	Ferrari	2023-02-23 07:59:20.63299	2023-02-23 07:59:20.63299
20	FIAT	2023-02-23 07:59:20.64682	2023-02-23 07:59:20.64682
21	Fisker	2023-02-23 07:59:20.662626	2023-02-23 07:59:20.662626
22	Ford	2023-02-23 07:59:20.677325	2023-02-23 07:59:20.677325
23	Freightliner	2023-02-23 07:59:20.6938	2023-02-23 07:59:20.6938
24	Geo	2023-02-23 07:59:20.708549	2023-02-23 07:59:20.708549
25	GMC	2023-02-23 07:59:20.723318	2023-02-23 07:59:20.723318
26	Honda	2023-02-23 07:59:20.738397	2023-02-23 07:59:20.738397
27	HUMMER	2023-02-23 07:59:20.753217	2023-02-23 07:59:20.753217
28	Hyundai	2023-02-23 07:59:20.769548	2023-02-23 07:59:20.769548
29	Infiniti	2023-02-23 07:59:20.784628	2023-02-23 07:59:20.784628
30	Isuzu	2023-02-23 07:59:20.802937	2023-02-23 07:59:20.802937
31	Jaguar	2023-02-23 07:59:20.817572	2023-02-23 07:59:20.817572
32	Jeep	2023-02-23 07:59:20.83112	2023-02-23 07:59:20.83112
33	Kia	2023-02-23 07:59:20.849005	2023-02-23 07:59:20.849005
34	Lamborghini	2023-02-23 07:59:20.86411	2023-02-23 07:59:20.86411
35	Lancia	2023-02-23 07:59:20.8789	2023-02-23 07:59:20.8789
36	Land Rover	2023-02-23 07:59:20.893038	2023-02-23 07:59:20.893038
37	Lexus	2023-02-23 07:59:20.907316	2023-02-23 07:59:20.907316
38	Lincoln	2023-02-23 07:59:20.922943	2023-02-23 07:59:20.922943
39	Lotus	2023-02-23 07:59:20.937771	2023-02-23 07:59:20.937771
40	Maserati	2023-02-23 07:59:20.952589	2023-02-23 07:59:20.952589
41	Maybach	2023-02-23 07:59:20.967918	2023-02-23 07:59:20.967918
42	Mazda	2023-02-23 07:59:20.982112	2023-02-23 07:59:20.982112
43	McLaren	2023-02-23 07:59:20.999117	2023-02-23 07:59:20.999117
44	Mercedes-Benz	2023-02-23 07:59:21.017465	2023-02-23 07:59:21.017465
45	Mercury	2023-02-23 07:59:21.031187	2023-02-23 07:59:21.031187
46	Merkur	2023-02-23 07:59:21.045608	2023-02-23 07:59:21.045608
47	MINI	2023-02-23 07:59:21.059806	2023-02-23 07:59:21.059806
48	Mitsubishi	2023-02-23 07:59:21.07686	2023-02-23 07:59:21.07686
49	Nissan	2023-02-23 07:59:21.092194	2023-02-23 07:59:21.092194
50	Oldsmobile	2023-02-23 07:59:21.106469	2023-02-23 07:59:21.106469
51	Peugeot	2023-02-23 07:59:21.121209	2023-02-23 07:59:21.121209
52	Plymouth	2023-02-23 07:59:21.137463	2023-02-23 07:59:21.137463
53	Pontiac	2023-02-23 07:59:21.152534	2023-02-23 07:59:21.152534
54	Porsche	2023-02-23 07:59:21.166968	2023-02-23 07:59:21.166968
55	RAM	2023-02-23 07:59:21.184434	2023-02-23 07:59:21.184434
56	Renault	2023-02-23 07:59:21.202505	2023-02-23 07:59:21.202505
57	Rolls-Royce	2023-02-23 07:59:21.218204	2023-02-23 07:59:21.218204
58	Saab	2023-02-23 07:59:21.233029	2023-02-23 07:59:21.233029
59	Saturn	2023-02-23 07:59:21.249923	2023-02-23 07:59:21.249923
60	Scion	2023-02-23 07:59:21.264206	2023-02-23 07:59:21.264206
61	smart	2023-02-23 07:59:21.278428	2023-02-23 07:59:21.278428
62	SRT	2023-02-23 07:59:21.295773	2023-02-23 07:59:21.295773
63	Sterling	2023-02-23 07:59:21.313673	2023-02-23 07:59:21.313673
64	Subaru	2023-02-23 07:59:21.328021	2023-02-23 07:59:21.328021
65	Suzuki	2023-02-23 07:59:21.342286	2023-02-23 07:59:21.342286
66	Tesla	2023-02-23 07:59:21.357067	2023-02-23 07:59:21.357067
67	Toyota	2023-02-23 07:59:21.3736	2023-02-23 07:59:21.3736
68	Triumph	2023-02-23 07:59:21.389205	2023-02-23 07:59:21.389205
69	Volkswagen	2023-02-23 07:59:21.404439	2023-02-23 07:59:21.404439
70	Volvo	2023-02-23 07:59:22.266116	2023-02-23 07:59:22.266116
71	Yugo	2023-02-23 07:59:22.271486	2023-02-23 07:59:22.271486
\.


--
-- Data for Name: car_models; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.car_models (id, name, car_make_id, created_at, updated_at) FROM stdin;
1	 - 2.2CL	1	2023-02-23 08:07:03.693021	2023-02-23 08:07:03.693021
2	 - 2.3CL	1	2023-02-23 08:07:03.844859	2023-02-23 08:07:03.844859
3	 - 3.0CL	1	2023-02-23 08:07:03.974396	2023-02-23 08:07:03.974396
4	 - 3.2CL	1	2023-02-23 08:07:04.066134	2023-02-23 08:07:04.066134
5	ILX	1	2023-02-23 08:07:04.131079	2023-02-23 08:07:04.131079
6	Integra	1	2023-02-23 08:07:04.17775	2023-02-23 08:07:04.17775
7	Legend	1	2023-02-23 08:07:04.205932	2023-02-23 08:07:04.205932
8	MDX	1	2023-02-23 08:07:04.230187	2023-02-23 08:07:04.230187
9	NSX	1	2023-02-23 08:07:04.250822	2023-02-23 08:07:04.250822
10	RDX	1	2023-02-23 08:07:04.27077	2023-02-23 08:07:04.27077
11	RL Models (2)	1	2023-02-23 08:07:04.289828	2023-02-23 08:07:04.289828
12	 - 3.5 RL	1	2023-02-23 08:07:04.315235	2023-02-23 08:07:04.315235
13	 - RL	1	2023-02-23 08:07:04.331781	2023-02-23 08:07:04.331781
14	RSX	1	2023-02-23 08:07:04.348456	2023-02-23 08:07:04.348456
15	SLX	1	2023-02-23 08:07:04.368941	2023-02-23 08:07:04.368941
16	TL Models (3)	1	2023-02-23 08:07:04.388808	2023-02-23 08:07:04.388808
17	 - 2.5TL	1	2023-02-23 08:07:04.407829	2023-02-23 08:07:04.407829
18	 - 3.2TL	1	2023-02-23 08:07:04.427748	2023-02-23 08:07:04.427748
19	 - TL	1	2023-02-23 08:07:04.445331	2023-02-23 08:07:04.445331
20	TSX	1	2023-02-23 08:07:04.463346	2023-02-23 08:07:04.463346
21	Vigor	1	2023-02-23 08:07:04.48134	2023-02-23 08:07:04.48134
22	ZDX	1	2023-02-23 08:07:04.502577	2023-02-23 08:07:04.502577
23	Other Acura Models	1	2023-02-23 08:07:04.521916	2023-02-23 08:07:04.521916
24	164	2	2023-02-23 08:07:04.541375	2023-02-23 08:07:04.541375
25	8C Competizione	2	2023-02-23 08:07:04.559848	2023-02-23 08:07:04.559848
26	GTV-6	2	2023-02-23 08:07:04.57807	2023-02-23 08:07:04.57807
27	Milano	2	2023-02-23 08:07:04.598077	2023-02-23 08:07:04.598077
28	Spider	2	2023-02-23 08:07:04.618437	2023-02-23 08:07:04.618437
29	Other Alfa Romeo Models	2	2023-02-23 08:07:04.638302	2023-02-23 08:07:04.638302
30	Alliance	3	2023-02-23 08:07:04.660576	2023-02-23 08:07:04.660576
31	Concord	3	2023-02-23 08:07:04.67917	2023-02-23 08:07:04.67917
32	Eagle	3	2023-02-23 08:07:04.69897	2023-02-23 08:07:04.69897
33	Encore	3	2023-02-23 08:07:04.718746	2023-02-23 08:07:04.718746
34	Spirit	3	2023-02-23 08:07:04.737792	2023-02-23 08:07:04.737792
35	Other AMC Models	3	2023-02-23 08:07:04.756159	2023-02-23 08:07:04.756159
36	DB7	4	2023-02-23 08:07:04.775356	2023-02-23 08:07:04.775356
37	DB9	4	2023-02-23 08:07:04.794612	2023-02-23 08:07:04.794612
38	DBS	4	2023-02-23 08:07:04.81343	2023-02-23 08:07:04.81343
39	Lagonda	4	2023-02-23 08:07:04.834052	2023-02-23 08:07:04.834052
40	Rapide	4	2023-02-23 08:07:04.854342	2023-02-23 08:07:04.854342
41	V12 Vantage	4	2023-02-23 08:07:04.87361	2023-02-23 08:07:04.87361
42	V8 Vantage	4	2023-02-23 08:07:04.894724	2023-02-23 08:07:04.894724
43	Vanquish	4	2023-02-23 08:07:04.912462	2023-02-23 08:07:04.912462
44	Virage	4	2023-02-23 08:07:04.930907	2023-02-23 08:07:04.930907
45	Other Aston Martin Models	4	2023-02-23 08:07:04.952701	2023-02-23 08:07:04.952701
46	100	5	2023-02-23 08:07:04.96989	2023-02-23 08:07:04.96989
47	200	5	2023-02-23 08:07:04.987676	2023-02-23 08:07:04.987676
48	4000	5	2023-02-23 08:07:05.007316	2023-02-23 08:07:05.007316
49	5000	5	2023-02-23 08:07:05.025637	2023-02-23 08:07:05.025637
50	80	5	2023-02-23 08:07:05.043971	2023-02-23 08:07:05.043971
51	90	5	2023-02-23 08:07:05.064398	2023-02-23 08:07:05.064398
52	A3	5	2023-02-23 08:07:05.082684	2023-02-23 08:07:05.082684
53	A4	5	2023-02-23 08:07:05.104152	2023-02-23 08:07:05.104152
54	A5	5	2023-02-23 08:07:05.121989	2023-02-23 08:07:05.121989
55	A6	5	2023-02-23 08:07:05.139477	2023-02-23 08:07:05.139477
56	A7	5	2023-02-23 08:07:05.158023	2023-02-23 08:07:05.158023
57	A8	5	2023-02-23 08:07:05.17732	2023-02-23 08:07:05.17732
58	allroad	5	2023-02-23 08:07:05.195473	2023-02-23 08:07:05.195473
59	Cabriolet	5	2023-02-23 08:07:05.212669	2023-02-23 08:07:05.212669
60	Coupe	5	2023-02-23 08:07:05.231467	2023-02-23 08:07:05.231467
61	Q3	5	2023-02-23 08:07:05.250198	2023-02-23 08:07:05.250198
62	Q5	5	2023-02-23 08:07:05.271522	2023-02-23 08:07:05.271522
63	Q7	5	2023-02-23 08:07:05.289804	2023-02-23 08:07:05.289804
64	Quattro	5	2023-02-23 08:07:05.309321	2023-02-23 08:07:05.309321
65	R8	5	2023-02-23 08:07:05.332427	2023-02-23 08:07:05.332427
66	RS 4	5	2023-02-23 08:07:05.352118	2023-02-23 08:07:05.352118
67	RS 5	5	2023-02-23 08:07:05.374824	2023-02-23 08:07:05.374824
68	RS 6	5	2023-02-23 08:07:05.394627	2023-02-23 08:07:05.394627
69	S4	5	2023-02-23 08:07:05.418971	2023-02-23 08:07:05.418971
70	S5	5	2023-02-23 08:07:05.438115	2023-02-23 08:07:05.438115
71	S6	5	2023-02-23 08:07:05.456293	2023-02-23 08:07:05.456293
72	S7	5	2023-02-23 08:07:05.474273	2023-02-23 08:07:05.474273
73	S8	5	2023-02-23 08:07:05.493695	2023-02-23 08:07:05.493695
74	TT	5	2023-02-23 08:07:05.511706	2023-02-23 08:07:05.511706
75	TT RS	5	2023-02-23 08:07:05.530316	2023-02-23 08:07:05.530316
76	TTS	5	2023-02-23 08:07:05.551798	2023-02-23 08:07:05.551798
77	V8 Quattro	5	2023-02-23 08:07:05.573756	2023-02-23 08:07:05.573756
78	Other Audi Models	5	2023-02-23 08:07:05.595141	2023-02-23 08:07:05.595141
79	Convertible	6	2023-02-23 08:07:05.616181	2023-02-23 08:07:05.616181
80	Coupe	6	2023-02-23 08:07:05.63404	2023-02-23 08:07:05.63404
81	Sedan	6	2023-02-23 08:07:05.653385	2023-02-23 08:07:05.653385
82	Other Avanti Models	6	2023-02-23 08:07:05.67293	2023-02-23 08:07:05.67293
83	Arnage	7	2023-02-23 08:07:05.691363	2023-02-23 08:07:05.691363
84	Azure	7	2023-02-23 08:07:05.709754	2023-02-23 08:07:05.709754
85	Brooklands	7	2023-02-23 08:07:05.730393	2023-02-23 08:07:05.730393
86	Continental	7	2023-02-23 08:07:05.752172	2023-02-23 08:07:05.752172
87	Corniche	7	2023-02-23 08:07:05.770715	2023-02-23 08:07:05.770715
88	Eight	7	2023-02-23 08:07:05.793729	2023-02-23 08:07:05.793729
89	Mulsanne	7	2023-02-23 08:07:05.810719	2023-02-23 08:07:05.810719
90	Turbo R	7	2023-02-23 08:07:05.829888	2023-02-23 08:07:05.829888
91	Other Bentley Models	7	2023-02-23 08:07:05.850154	2023-02-23 08:07:05.850154
92	1 Series (3)	8	2023-02-23 08:07:05.870306	2023-02-23 08:07:05.870306
93	 - 128i	8	2023-02-23 08:07:05.889967	2023-02-23 08:07:05.889967
94	 - 135i	8	2023-02-23 08:07:05.909842	2023-02-23 08:07:05.909842
95	 - 135is	8	2023-02-23 08:07:05.929682	2023-02-23 08:07:05.929682
96	3 Series (29)	8	2023-02-23 08:07:05.950613	2023-02-23 08:07:05.950613
97	 - 318i	8	2023-02-23 08:07:05.969774	2023-02-23 08:07:05.969774
98	 - 318iC	8	2023-02-23 08:07:05.988175	2023-02-23 08:07:05.988175
99	 - 318iS	8	2023-02-23 08:07:06.009453	2023-02-23 08:07:06.009453
100	 - 318ti	8	2023-02-23 08:07:06.028401	2023-02-23 08:07:06.028401
101	 - 320i	8	2023-02-23 08:07:06.047289	2023-02-23 08:07:06.047289
102	 - 323ci	8	2023-02-23 08:07:06.066314	2023-02-23 08:07:06.066314
103	 - 323i	8	2023-02-23 08:07:06.086619	2023-02-23 08:07:06.086619
104	 - 323is	8	2023-02-23 08:07:06.107533	2023-02-23 08:07:06.107533
105	 - 323iT	8	2023-02-23 08:07:06.127952	2023-02-23 08:07:06.127952
106	 - 325Ci	8	2023-02-23 08:07:06.146554	2023-02-23 08:07:06.146554
107	 - 325e	8	2023-02-23 08:07:06.166812	2023-02-23 08:07:06.166812
108	 - 325es	8	2023-02-23 08:07:06.185739	2023-02-23 08:07:06.185739
109	 - 325i	8	2023-02-23 08:07:06.205136	2023-02-23 08:07:06.205136
110	 - 325is	8	2023-02-23 08:07:06.225327	2023-02-23 08:07:06.225327
111	 - 325iX	8	2023-02-23 08:07:06.249288	2023-02-23 08:07:06.249288
112	 - 325xi	8	2023-02-23 08:07:06.272141	2023-02-23 08:07:06.272141
113	 - 328Ci	8	2023-02-23 08:07:06.293588	2023-02-23 08:07:06.293588
114	 - 328i	8	2023-02-23 08:07:06.312792	2023-02-23 08:07:06.312792
115	 - 328iS	8	2023-02-23 08:07:06.331283	2023-02-23 08:07:06.331283
116	 - 328xi	8	2023-02-23 08:07:06.352851	2023-02-23 08:07:06.352851
117	 - 330Ci	8	2023-02-23 08:07:06.371862	2023-02-23 08:07:06.371862
118	 - 330i	8	2023-02-23 08:07:06.391092	2023-02-23 08:07:06.391092
119	 - 330xi	8	2023-02-23 08:07:06.411618	2023-02-23 08:07:06.411618
120	 - 335d	8	2023-02-23 08:07:06.434395	2023-02-23 08:07:06.434395
121	 - 335i	8	2023-02-23 08:07:06.454923	2023-02-23 08:07:06.454923
122	 - 335is	8	2023-02-23 08:07:06.476539	2023-02-23 08:07:06.476539
123	 - 335xi	8	2023-02-23 08:07:06.497921	2023-02-23 08:07:06.497921
124	 - ActiveHybrid 3	8	2023-02-23 08:07:06.52124	2023-02-23 08:07:06.52124
125	 - 325	8	2023-02-23 08:07:06.540775	2023-02-23 08:07:06.540775
126	5 Series (19)	8	2023-02-23 08:07:06.55976	2023-02-23 08:07:06.55976
127	 - 524td	8	2023-02-23 08:07:06.58008	2023-02-23 08:07:06.58008
128	 - 525i	8	2023-02-23 08:07:06.598778	2023-02-23 08:07:06.598778
129	 - 525xi	8	2023-02-23 08:07:06.617989	2023-02-23 08:07:06.617989
130	 - 528e	8	2023-02-23 08:07:06.638461	2023-02-23 08:07:06.638461
131	 - 528i	8	2023-02-23 08:07:06.658867	2023-02-23 08:07:06.658867
132	 - 528iT	8	2023-02-23 08:07:06.681498	2023-02-23 08:07:06.681498
133	 - 528xi	8	2023-02-23 08:07:06.701547	2023-02-23 08:07:06.701547
134	 - 530i	8	2023-02-23 08:07:06.721052	2023-02-23 08:07:06.721052
135	 - 530iT	8	2023-02-23 08:07:06.742213	2023-02-23 08:07:06.742213
136	 - 530xi	8	2023-02-23 08:07:06.760526	2023-02-23 08:07:06.760526
137	 - 533i	8	2023-02-23 08:07:06.779322	2023-02-23 08:07:06.779322
138	 - 535i	8	2023-02-23 08:07:06.801006	2023-02-23 08:07:06.801006
139	 - 535i Gran Turismo	8	2023-02-23 08:07:06.82203	2023-02-23 08:07:06.82203
140	 - 535xi	8	2023-02-23 08:07:06.841292	2023-02-23 08:07:06.841292
141	 - 540i	8	2023-02-23 08:07:06.861955	2023-02-23 08:07:06.861955
142	 - 545i	8	2023-02-23 08:07:06.88111	2023-02-23 08:07:06.88111
143	 - 550i	8	2023-02-23 08:07:06.903218	2023-02-23 08:07:06.903218
144	 - 550i Gran Turismo	8	2023-02-23 08:07:06.923295	2023-02-23 08:07:06.923295
145	 - ActiveHybrid 5	8	2023-02-23 08:07:06.951178	2023-02-23 08:07:06.951178
146	6 Series (8)	8	2023-02-23 08:07:06.976148	2023-02-23 08:07:06.976148
147	 - 633CSi	8	2023-02-23 08:07:06.995279	2023-02-23 08:07:06.995279
148	 - 635CSi	8	2023-02-23 08:07:07.015927	2023-02-23 08:07:07.015927
149	 - 640i	8	2023-02-23 08:07:07.036842	2023-02-23 08:07:07.036842
150	 - 640i Gran Coupe	8	2023-02-23 08:07:07.056977	2023-02-23 08:07:07.056977
151	 - 645Ci	8	2023-02-23 08:07:07.08043	2023-02-23 08:07:07.08043
152	 - 650i	8	2023-02-23 08:07:07.101171	2023-02-23 08:07:07.101171
153	 - 650i Gran Coupe	8	2023-02-23 08:07:07.120739	2023-02-23 08:07:07.120739
154	 - L6	8	2023-02-23 08:07:07.140297	2023-02-23 08:07:07.140297
155	7 Series (15)	8	2023-02-23 08:07:07.159153	2023-02-23 08:07:07.159153
156	 - 733i	8	2023-02-23 08:07:07.178676	2023-02-23 08:07:07.178676
157	 - 735i	8	2023-02-23 08:07:07.197381	2023-02-23 08:07:07.197381
158	 - 735iL	8	2023-02-23 08:07:07.215983	2023-02-23 08:07:07.215983
159	 - 740i	8	2023-02-23 08:07:07.236214	2023-02-23 08:07:07.236214
160	 - 740iL	8	2023-02-23 08:07:07.256856	2023-02-23 08:07:07.256856
161	 - 740Li	8	2023-02-23 08:07:07.275963	2023-02-23 08:07:07.275963
162	 - 745i	8	2023-02-23 08:07:07.2958	2023-02-23 08:07:07.2958
163	 - 745Li	8	2023-02-23 08:07:07.314253	2023-02-23 08:07:07.314253
164	 - 750i	8	2023-02-23 08:07:07.332446	2023-02-23 08:07:07.332446
165	 - 750iL	8	2023-02-23 08:07:07.351484	2023-02-23 08:07:07.351484
166	 - 750Li	8	2023-02-23 08:07:07.371373	2023-02-23 08:07:07.371373
167	 - 760i	8	2023-02-23 08:07:07.389612	2023-02-23 08:07:07.389612
168	 - 760Li	8	2023-02-23 08:07:08.629453	2023-02-23 08:07:08.629453
169	 - ActiveHybrid 7	8	2023-02-23 08:07:08.633558	2023-02-23 08:07:08.633558
170	 - Alpina B7	8	2023-02-23 08:07:43.41285	2023-02-23 08:07:43.41285
171	8 Series (4)	8	2023-02-23 08:07:43.499949	2023-02-23 08:07:43.499949
172	 - 840Ci	8	2023-02-23 08:07:43.550744	2023-02-23 08:07:43.550744
173	 - 850Ci	8	2023-02-23 08:07:43.58532	2023-02-23 08:07:43.58532
174	 - 850CSi	8	2023-02-23 08:07:43.611582	2023-02-23 08:07:43.611582
175	 - 850i	8	2023-02-23 08:07:43.63036	2023-02-23 08:07:43.63036
176	L Series (1)	8	2023-02-23 08:07:43.646948	2023-02-23 08:07:43.646948
177	 - L7	8	2023-02-23 08:07:43.666022	2023-02-23 08:07:43.666022
178	M Series (8)	8	2023-02-23 08:07:43.685539	2023-02-23 08:07:43.685539
179	 - 1 Series M	8	2023-02-23 08:07:43.705289	2023-02-23 08:07:43.705289
180	 - M Coupe	8	2023-02-23 08:07:43.728351	2023-02-23 08:07:43.728351
181	 - M Roadster	8	2023-02-23 08:07:43.747107	2023-02-23 08:07:43.747107
182	 - M3	8	2023-02-23 08:07:43.765572	2023-02-23 08:07:43.765572
183	 - M5	8	2023-02-23 08:07:43.78563	2023-02-23 08:07:43.78563
184	 - M6	8	2023-02-23 08:07:43.804753	2023-02-23 08:07:43.804753
185	 - X5 M	8	2023-02-23 08:07:43.822802	2023-02-23 08:07:43.822802
186	 - X6 M	8	2023-02-23 08:07:43.841555	2023-02-23 08:07:43.841555
187	X Series (5)	8	2023-02-23 08:07:43.86175	2023-02-23 08:07:43.86175
188	 - ActiveHybrid X6	8	2023-02-23 08:07:43.880486	2023-02-23 08:07:43.880486
189	 - X1	8	2023-02-23 08:07:43.898722	2023-02-23 08:07:43.898722
190	 - X3	8	2023-02-23 08:07:43.918754	2023-02-23 08:07:43.918754
191	 - X5	8	2023-02-23 08:07:43.937638	2023-02-23 08:07:43.937638
192	 - X6	8	2023-02-23 08:07:43.956072	2023-02-23 08:07:43.956072
193	Z Series (3)	8	2023-02-23 08:07:43.974236	2023-02-23 08:07:43.974236
194	 - Z3	8	2023-02-23 08:07:43.99349	2023-02-23 08:07:43.99349
195	 - Z4	8	2023-02-23 08:07:44.011899	2023-02-23 08:07:44.011899
196	 - Z8	8	2023-02-23 08:07:44.031649	2023-02-23 08:07:44.031649
197	Other BMW Models	8	2023-02-23 08:07:44.053666	2023-02-23 08:07:44.053666
198	Century	9	2023-02-23 08:07:44.071533	2023-02-23 08:07:44.071533
199	Electra	9	2023-02-23 08:07:44.088766	2023-02-23 08:07:44.088766
200	Enclave	9	2023-02-23 08:07:44.106602	2023-02-23 08:07:44.106602
201	Encore	9	2023-02-23 08:07:44.125874	2023-02-23 08:07:44.125874
202	LaCrosse	9	2023-02-23 08:07:44.144909	2023-02-23 08:07:44.144909
203	Le Sabre	9	2023-02-23 08:07:44.165768	2023-02-23 08:07:44.165768
204	Lucerne	9	2023-02-23 08:07:44.188571	2023-02-23 08:07:44.188571
205	Park Avenue	9	2023-02-23 08:07:44.212457	2023-02-23 08:07:44.212457
206	Rainier	9	2023-02-23 08:07:44.231624	2023-02-23 08:07:44.231624
207	Reatta	9	2023-02-23 08:07:44.249953	2023-02-23 08:07:44.249953
208	Regal	9	2023-02-23 08:07:44.268339	2023-02-23 08:07:44.268339
209	Rendezvous	9	2023-02-23 08:07:44.286402	2023-02-23 08:07:44.286402
210	Riviera	9	2023-02-23 08:07:44.304728	2023-02-23 08:07:44.304728
211	Roadmaster	9	2023-02-23 08:07:44.323275	2023-02-23 08:07:44.323275
212	Skyhawk	9	2023-02-23 08:07:44.341759	2023-02-23 08:07:44.341759
213	Skylark	9	2023-02-23 08:07:44.360086	2023-02-23 08:07:44.360086
214	Somerset	9	2023-02-23 08:07:44.378257	2023-02-23 08:07:44.378257
215	Terraza	9	2023-02-23 08:07:44.397295	2023-02-23 08:07:44.397295
216	Verano	9	2023-02-23 08:07:44.415509	2023-02-23 08:07:44.415509
217	Other Buick Models	9	2023-02-23 08:07:44.436267	2023-02-23 08:07:44.436267
218	Allante	10	2023-02-23 08:07:44.45669	2023-02-23 08:07:44.45669
219	ATS	10	2023-02-23 08:07:44.475542	2023-02-23 08:07:44.475542
220	Brougham	10	2023-02-23 08:07:44.495536	2023-02-23 08:07:44.495536
221	Catera	10	2023-02-23 08:07:44.515479	2023-02-23 08:07:44.515479
222	Cimarron	10	2023-02-23 08:07:44.536609	2023-02-23 08:07:44.536609
223	CTS	10	2023-02-23 08:07:44.554562	2023-02-23 08:07:44.554562
224	De Ville	10	2023-02-23 08:07:44.572504	2023-02-23 08:07:44.572504
225	DTS	10	2023-02-23 08:07:44.591345	2023-02-23 08:07:44.591345
226	Eldorado	10	2023-02-23 08:07:44.609808	2023-02-23 08:07:44.609808
227	Escalade	10	2023-02-23 08:07:44.630778	2023-02-23 08:07:44.630778
228	Escalade ESV	10	2023-02-23 08:07:44.652676	2023-02-23 08:07:44.652676
229	Escalade EXT	10	2023-02-23 08:07:44.674479	2023-02-23 08:07:44.674479
230	Fleetwood	10	2023-02-23 08:07:44.69562	2023-02-23 08:07:44.69562
231	Seville	10	2023-02-23 08:07:44.714746	2023-02-23 08:07:44.714746
232	SRX	10	2023-02-23 08:07:44.733299	2023-02-23 08:07:44.733299
233	STS	10	2023-02-23 08:07:44.750562	2023-02-23 08:07:44.750562
234	XLR	10	2023-02-23 08:07:44.768271	2023-02-23 08:07:44.768271
235	XTS	10	2023-02-23 08:07:44.787189	2023-02-23 08:07:44.787189
236	Other Cadillac Models	10	2023-02-23 08:07:44.809001	2023-02-23 08:07:44.809001
237	Astro	11	2023-02-23 08:07:44.827745	2023-02-23 08:07:44.827745
238	Avalanche	11	2023-02-23 08:07:44.850346	2023-02-23 08:07:44.850346
239	Aveo	11	2023-02-23 08:07:44.869545	2023-02-23 08:07:44.869545
240	Aveo5	11	2023-02-23 08:07:44.890347	2023-02-23 08:07:44.890347
241	Beretta	11	2023-02-23 08:07:44.908249	2023-02-23 08:07:44.908249
242	Blazer	11	2023-02-23 08:07:44.927157	2023-02-23 08:07:44.927157
243	Camaro	11	2023-02-23 08:07:44.946243	2023-02-23 08:07:44.946243
244	Caprice	11	2023-02-23 08:07:44.965326	2023-02-23 08:07:44.965326
245	Captiva Sport	11	2023-02-23 08:07:44.984509	2023-02-23 08:07:44.984509
246	Cavalier	11	2023-02-23 08:07:45.007193	2023-02-23 08:07:45.007193
247	Celebrity	11	2023-02-23 08:07:45.026498	2023-02-23 08:07:45.026498
248	Chevette	11	2023-02-23 08:07:45.045566	2023-02-23 08:07:45.045566
249	Citation	11	2023-02-23 08:07:45.065006	2023-02-23 08:07:45.065006
250	Cobalt	11	2023-02-23 08:07:45.086802	2023-02-23 08:07:45.086802
251	Colorado	11	2023-02-23 08:07:45.104045	2023-02-23 08:07:45.104045
252	Corsica	11	2023-02-23 08:07:45.124225	2023-02-23 08:07:45.124225
253	Corvette	11	2023-02-23 08:07:45.143854	2023-02-23 08:07:45.143854
254	Cruze	11	2023-02-23 08:07:45.161261	2023-02-23 08:07:45.161261
255	El Camino	11	2023-02-23 08:07:45.179517	2023-02-23 08:07:45.179517
256	Equinox	11	2023-02-23 08:07:45.199706	2023-02-23 08:07:45.199706
257	Express Van	11	2023-02-23 08:07:45.218013	2023-02-23 08:07:45.218013
258	G Van	11	2023-02-23 08:07:45.235491	2023-02-23 08:07:45.235491
259	HHR	11	2023-02-23 08:07:45.254426	2023-02-23 08:07:45.254426
260	Impala	11	2023-02-23 08:07:45.273258	2023-02-23 08:07:45.273258
261	Kodiak C4500	11	2023-02-23 08:07:45.293107	2023-02-23 08:07:45.293107
262	Lumina	11	2023-02-23 08:07:45.312106	2023-02-23 08:07:45.312106
263	Lumina APV	11	2023-02-23 08:07:45.332089	2023-02-23 08:07:45.332089
264	LUV	11	2023-02-23 08:07:45.970644	2023-02-23 08:07:45.970644
265	Malibu	11	2023-02-23 08:07:45.976346	2023-02-23 08:07:45.976346
266	Metro	11	2023-02-23 08:07:52.792095	2023-02-23 08:07:52.792095
267	Monte Carlo	11	2023-02-23 08:07:52.935232	2023-02-23 08:07:52.935232
268	Nova	11	2023-02-23 08:07:53.015747	2023-02-23 08:07:53.015747
269	Prizm	11	2023-02-23 08:07:53.077965	2023-02-23 08:07:53.077965
270	S10 Blazer	11	2023-02-23 08:07:53.120724	2023-02-23 08:07:53.120724
271	S10 Pickup	11	2023-02-23 08:07:53.152842	2023-02-23 08:07:53.152842
272	Silverado and other C/K1500	11	2023-02-23 08:07:53.175416	2023-02-23 08:07:53.175416
273	Silverado and other C/K2500	11	2023-02-23 08:07:53.196869	2023-02-23 08:07:53.196869
274	Silverado and other C/K3500	11	2023-02-23 08:07:53.220183	2023-02-23 08:07:53.220183
275	Sonic	11	2023-02-23 08:07:53.238212	2023-02-23 08:07:53.238212
276	Spark	11	2023-02-23 08:07:53.25664	2023-02-23 08:07:53.25664
277	Spectrum	11	2023-02-23 08:07:53.27881	2023-02-23 08:07:53.27881
278	Sprint	11	2023-02-23 08:07:53.300238	2023-02-23 08:07:53.300238
279	SSR	11	2023-02-23 08:07:53.31906	2023-02-23 08:07:53.31906
280	Suburban	11	2023-02-23 08:07:53.338522	2023-02-23 08:07:53.338522
281	Tahoe	11	2023-02-23 08:07:53.355897	2023-02-23 08:07:53.355897
282	Tracker	11	2023-02-23 08:07:53.375462	2023-02-23 08:07:53.375462
283	TrailBlazer	11	2023-02-23 08:07:53.394146	2023-02-23 08:07:53.394146
284	TrailBlazer EXT	11	2023-02-23 08:07:53.415435	2023-02-23 08:07:53.415435
285	Traverse	11	2023-02-23 08:07:53.434951	2023-02-23 08:07:53.434951
286	Uplander	11	2023-02-23 08:07:53.453659	2023-02-23 08:07:53.453659
287	Venture	11	2023-02-23 08:07:53.473601	2023-02-23 08:07:53.473601
288	Volt	11	2023-02-23 08:07:53.496211	2023-02-23 08:07:53.496211
289	Other Chevrolet Models	11	2023-02-23 08:07:53.516352	2023-02-23 08:07:53.516352
290	200	12	2023-02-23 08:07:53.536675	2023-02-23 08:07:53.536675
291	300	12	2023-02-23 08:07:53.557619	2023-02-23 08:07:53.557619
292	300M	12	2023-02-23 08:07:53.577071	2023-02-23 08:07:53.577071
293	Aspen	12	2023-02-23 08:07:53.595366	2023-02-23 08:07:53.595366
294	Caravan	12	2023-02-23 08:07:53.614533	2023-02-23 08:07:53.614533
295	Cirrus	12	2023-02-23 08:07:53.633482	2023-02-23 08:07:53.633482
296	Concorde	12	2023-02-23 08:07:53.652599	2023-02-23 08:07:53.652599
297	Conquest	12	2023-02-23 08:07:53.672443	2023-02-23 08:07:53.672443
298	Cordoba	12	2023-02-23 08:07:53.692164	2023-02-23 08:07:53.692164
299	Crossfire	12	2023-02-23 08:07:53.711287	2023-02-23 08:07:53.711287
300	E Class	12	2023-02-23 08:07:53.731541	2023-02-23 08:07:53.731541
301	Fifth Avenue	12	2023-02-23 08:07:53.75519	2023-02-23 08:07:53.75519
302	Grand Voyager	12	2023-02-23 08:07:53.775865	2023-02-23 08:07:53.775865
303	Imperial	12	2023-02-23 08:07:53.796661	2023-02-23 08:07:53.796661
304	Intrepid	12	2023-02-23 08:07:53.817479	2023-02-23 08:07:53.817479
305	Laser	12	2023-02-23 08:07:53.834998	2023-02-23 08:07:53.834998
306	LeBaron	12	2023-02-23 08:07:53.852659	2023-02-23 08:07:53.852659
307	LHS	12	2023-02-23 08:07:53.871774	2023-02-23 08:07:53.871774
308	Neon	12	2023-02-23 08:07:53.890502	2023-02-23 08:07:53.890502
309	New Yorker	12	2023-02-23 08:07:53.9081	2023-02-23 08:07:53.9081
310	Newport	12	2023-02-23 08:07:53.929803	2023-02-23 08:07:53.929803
311	Pacifica	12	2023-02-23 08:07:53.948487	2023-02-23 08:07:53.948487
312	Prowler	12	2023-02-23 08:07:53.969356	2023-02-23 08:07:53.969356
313	PT Cruiser	12	2023-02-23 08:07:53.98985	2023-02-23 08:07:53.98985
314	Sebring	12	2023-02-23 08:07:54.010112	2023-02-23 08:07:54.010112
315	TC by Maserati	12	2023-02-23 08:07:54.029586	2023-02-23 08:07:54.029586
316	Town & Country	12	2023-02-23 08:07:54.047635	2023-02-23 08:07:54.047635
317	Voyager	12	2023-02-23 08:07:54.067829	2023-02-23 08:07:54.067829
318	Other Chrysler Models	12	2023-02-23 08:07:54.086422	2023-02-23 08:07:54.086422
319	Lanos	13	2023-02-23 08:07:54.106826	2023-02-23 08:07:54.106826
320	Leganza	13	2023-02-23 08:07:54.12666	2023-02-23 08:07:54.12666
321	Nubira	13	2023-02-23 08:07:54.147955	2023-02-23 08:07:54.147955
322	Other Daewoo Models	13	2023-02-23 08:07:54.168482	2023-02-23 08:07:54.168482
323	Charade	14	2023-02-23 08:07:54.190642	2023-02-23 08:07:54.190642
324	Rocky	14	2023-02-23 08:07:54.21361	2023-02-23 08:07:54.21361
325	Other Daihatsu Models	14	2023-02-23 08:07:54.232397	2023-02-23 08:07:54.232397
326	200SX	15	2023-02-23 08:07:54.25184	2023-02-23 08:07:54.25184
327	210	15	2023-02-23 08:07:54.269705	2023-02-23 08:07:54.269705
328	280ZX	15	2023-02-23 08:07:54.288747	2023-02-23 08:07:54.288747
329	300ZX	15	2023-02-23 08:07:54.309125	2023-02-23 08:07:54.309125
330	310	15	2023-02-23 08:07:54.330633	2023-02-23 08:07:54.330633
331	510	15	2023-02-23 08:07:54.348467	2023-02-23 08:07:54.348467
332	720	15	2023-02-23 08:07:54.367136	2023-02-23 08:07:54.367136
333	810	15	2023-02-23 08:07:54.38939	2023-02-23 08:07:54.38939
334	Maxima	15	2023-02-23 08:07:54.410275	2023-02-23 08:07:54.410275
335	Pickup	15	2023-02-23 08:07:54.428329	2023-02-23 08:07:54.428329
336	Pulsar	15	2023-02-23 08:07:54.448401	2023-02-23 08:07:54.448401
337	Sentra	15	2023-02-23 08:07:54.466921	2023-02-23 08:07:54.466921
338	Stanza	15	2023-02-23 08:07:54.485009	2023-02-23 08:07:54.485009
339	Other Datsun Models	15	2023-02-23 08:07:54.506432	2023-02-23 08:07:54.506432
340	DMC-12	16	2023-02-23 08:07:54.525214	2023-02-23 08:07:54.525214
341	400	17	2023-02-23 08:07:54.543576	2023-02-23 08:07:54.543576
342	600	17	2023-02-23 08:07:54.561574	2023-02-23 08:07:54.561574
343	Aries	17	2023-02-23 08:07:54.582721	2023-02-23 08:07:54.582721
344	Avenger	17	2023-02-23 08:07:54.600919	2023-02-23 08:07:54.600919
345	Caliber	17	2023-02-23 08:07:54.619097	2023-02-23 08:07:54.619097
346	Caravan	17	2023-02-23 08:07:54.639762	2023-02-23 08:07:54.639762
347	Challenger	17	2023-02-23 08:07:54.657509	2023-02-23 08:07:54.657509
348	Charger	17	2023-02-23 08:07:54.67476	2023-02-23 08:07:54.67476
349	Colt	17	2023-02-23 08:07:54.695388	2023-02-23 08:07:54.695388
350	Conquest	17	2023-02-23 08:07:54.714181	2023-02-23 08:07:54.714181
351	D/W Truck	17	2023-02-23 08:07:54.732138	2023-02-23 08:07:54.732138
352	Dakota	17	2023-02-23 08:07:54.751747	2023-02-23 08:07:54.751747
353	Dart	17	2023-02-23 08:07:54.770782	2023-02-23 08:07:54.770782
354	Daytona	17	2023-02-23 08:07:54.789155	2023-02-23 08:07:54.789155
355	Diplomat	17	2023-02-23 08:07:54.80755	2023-02-23 08:07:54.80755
356	Durango	17	2023-02-23 08:07:54.828498	2023-02-23 08:07:54.828498
357	Dynasty	17	2023-02-23 08:07:54.848357	2023-02-23 08:07:54.848357
358	Grand Caravan	17	2023-02-23 08:07:54.869338	2023-02-23 08:07:54.869338
359	Intrepid	17	2023-02-23 08:07:54.890739	2023-02-23 08:07:54.890739
360	Journey	17	2023-02-23 08:07:54.91271	2023-02-23 08:07:54.91271
361	Lancer	17	2023-02-23 08:07:54.930416	2023-02-23 08:07:54.930416
362	Magnum	17	2023-02-23 08:07:54.950624	2023-02-23 08:07:54.950624
363	Mirada	17	2023-02-23 08:07:54.969692	2023-02-23 08:07:54.969692
364	Monaco	17	2023-02-23 08:07:54.988642	2023-02-23 08:07:54.988642
365	Neon	17	2023-02-23 08:07:55.010672	2023-02-23 08:07:55.010672
366	Nitro	17	2023-02-23 08:07:55.030138	2023-02-23 08:07:55.030138
367	Omni	17	2023-02-23 08:07:55.048716	2023-02-23 08:07:55.048716
368	Raider	17	2023-02-23 08:07:55.071046	2023-02-23 08:07:55.071046
369	Ram 1500 Truck	17	2023-02-23 08:07:55.096047	2023-02-23 08:07:55.096047
370	Ram 2500 Truck	17	2023-02-23 08:07:55.118025	2023-02-23 08:07:55.118025
371	Ram 3500 Truck	17	2023-02-23 08:07:55.138259	2023-02-23 08:07:55.138259
372	Ram 4500 Truck	17	2023-02-23 08:07:55.159089	2023-02-23 08:07:55.159089
373	Ram 50 Truck	17	2023-02-23 08:07:55.178631	2023-02-23 08:07:55.178631
374	RAM C/V	17	2023-02-23 08:07:55.199007	2023-02-23 08:07:55.199007
375	Ram SRT-10	17	2023-02-23 08:07:55.219509	2023-02-23 08:07:55.219509
376	Ram Van	17	2023-02-23 08:07:55.23847	2023-02-23 08:07:55.23847
377	Ram Wagon	17	2023-02-23 08:07:55.261895	2023-02-23 08:07:55.261895
378	Ramcharger	17	2023-02-23 08:07:55.284752	2023-02-23 08:07:55.284752
379	Rampage	17	2023-02-23 08:07:55.304019	2023-02-23 08:07:55.304019
380	Shadow	17	2023-02-23 08:07:55.323717	2023-02-23 08:07:55.323717
381	Spirit	17	2023-02-23 08:07:55.34567	2023-02-23 08:07:55.34567
382	Sprinter	17	2023-02-23 08:07:55.363852	2023-02-23 08:07:55.363852
383	SRT-4	17	2023-02-23 08:07:56.058775	2023-02-23 08:07:56.058775
384	St. Regis	17	2023-02-23 08:07:56.064775	2023-02-23 08:07:56.064775
385	Stealth	17	2023-02-23 08:08:02.649771	2023-02-23 08:08:02.649771
386	Stratus	17	2023-02-23 08:08:02.739657	2023-02-23 08:08:02.739657
387	Viper	17	2023-02-23 08:08:02.827585	2023-02-23 08:08:02.827585
388	Other Dodge Models	17	2023-02-23 08:08:02.860141	2023-02-23 08:08:02.860141
389	Medallion	18	2023-02-23 08:08:02.884092	2023-02-23 08:08:02.884092
390	Premier	18	2023-02-23 08:08:02.905167	2023-02-23 08:08:02.905167
391	Summit	18	2023-02-23 08:08:02.923608	2023-02-23 08:08:02.923608
392	Talon	18	2023-02-23 08:08:02.9416	2023-02-23 08:08:02.9416
393	Vision	18	2023-02-23 08:08:02.961526	2023-02-23 08:08:02.961526
394	Other Eagle Models	18	2023-02-23 08:08:02.984476	2023-02-23 08:08:02.984476
395	308 GTB Quattrovalvole	19	2023-02-23 08:08:03.005412	2023-02-23 08:08:03.005412
396	308 GTBI	19	2023-02-23 08:08:03.025642	2023-02-23 08:08:03.025642
397	308 GTS Quattrovalvole	19	2023-02-23 08:08:03.052083	2023-02-23 08:08:03.052083
398	308 GTSI	19	2023-02-23 08:08:03.071976	2023-02-23 08:08:03.071976
399	328 GTB	19	2023-02-23 08:08:03.093282	2023-02-23 08:08:03.093282
400	328 GTS	19	2023-02-23 08:08:03.113092	2023-02-23 08:08:03.113092
401	348 GTB	19	2023-02-23 08:08:03.132005	2023-02-23 08:08:03.132005
402	348 GTS	19	2023-02-23 08:08:03.151932	2023-02-23 08:08:03.151932
403	348 Spider	19	2023-02-23 08:08:03.172385	2023-02-23 08:08:03.172385
404	348 TB	19	2023-02-23 08:08:03.191169	2023-02-23 08:08:03.191169
405	348 TS	19	2023-02-23 08:08:03.209568	2023-02-23 08:08:03.209568
406	360	19	2023-02-23 08:08:03.227443	2023-02-23 08:08:03.227443
407	456 GT	19	2023-02-23 08:08:03.24667	2023-02-23 08:08:03.24667
408	456M GT	19	2023-02-23 08:08:03.266452	2023-02-23 08:08:03.266452
409	458 Italia	19	2023-02-23 08:08:03.285081	2023-02-23 08:08:03.285081
410	512 BBi	19	2023-02-23 08:08:03.304637	2023-02-23 08:08:03.304637
411	512M	19	2023-02-23 08:08:03.322546	2023-02-23 08:08:03.322546
412	512TR	19	2023-02-23 08:08:03.345208	2023-02-23 08:08:03.345208
413	550 Maranello	19	2023-02-23 08:08:03.366128	2023-02-23 08:08:03.366128
414	575M Maranello	19	2023-02-23 08:08:03.388287	2023-02-23 08:08:03.388287
415	599 GTB Fiorano	19	2023-02-23 08:08:03.409191	2023-02-23 08:08:03.409191
416	599 GTO	19	2023-02-23 08:08:03.429063	2023-02-23 08:08:03.429063
417	612 Scaglietti	19	2023-02-23 08:08:03.450926	2023-02-23 08:08:03.450926
418	California	19	2023-02-23 08:08:03.473418	2023-02-23 08:08:03.473418
419	Enzo	19	2023-02-23 08:08:03.494399	2023-02-23 08:08:03.494399
420	F355	19	2023-02-23 08:08:03.515695	2023-02-23 08:08:03.515695
421	F40	19	2023-02-23 08:08:03.534029	2023-02-23 08:08:03.534029
422	F430	19	2023-02-23 08:08:03.552068	2023-02-23 08:08:03.552068
423	F50	19	2023-02-23 08:08:03.569441	2023-02-23 08:08:03.569441
424	FF	19	2023-02-23 08:08:03.588063	2023-02-23 08:08:03.588063
425	Mondial	19	2023-02-23 08:08:03.607665	2023-02-23 08:08:03.607665
426	Testarossa	19	2023-02-23 08:08:03.627506	2023-02-23 08:08:03.627506
427	Other Ferrari Models	19	2023-02-23 08:08:03.648474	2023-02-23 08:08:03.648474
428	2000 Spider	20	2023-02-23 08:08:03.667659	2023-02-23 08:08:03.667659
429	500	20	2023-02-23 08:08:03.687099	2023-02-23 08:08:03.687099
430	Bertone X1/9	20	2023-02-23 08:08:03.706557	2023-02-23 08:08:03.706557
431	Brava	20	2023-02-23 08:08:03.72729	2023-02-23 08:08:03.72729
432	Pininfarina Spider	20	2023-02-23 08:08:03.747696	2023-02-23 08:08:03.747696
433	Strada	20	2023-02-23 08:08:03.767226	2023-02-23 08:08:03.767226
434	X1/9	20	2023-02-23 08:08:03.787177	2023-02-23 08:08:03.787177
435	Other Fiat Models	20	2023-02-23 08:08:03.804905	2023-02-23 08:08:03.804905
436	Karma	21	2023-02-23 08:08:03.82294	2023-02-23 08:08:03.82294
437	Aerostar	22	2023-02-23 08:08:03.841976	2023-02-23 08:08:03.841976
438	Aspire	22	2023-02-23 08:08:03.860545	2023-02-23 08:08:03.860545
439	Bronco	22	2023-02-23 08:08:03.878158	2023-02-23 08:08:03.878158
440	Bronco II	22	2023-02-23 08:08:03.896883	2023-02-23 08:08:03.896883
441	C-MAX	22	2023-02-23 08:08:03.921897	2023-02-23 08:08:03.921897
442	Club Wagon	22	2023-02-23 08:08:03.941624	2023-02-23 08:08:03.941624
443	Contour	22	2023-02-23 08:08:03.960881	2023-02-23 08:08:03.960881
444	Courier	22	2023-02-23 08:08:03.981948	2023-02-23 08:08:03.981948
445	Crown Victoria	22	2023-02-23 08:08:04.005703	2023-02-23 08:08:04.005703
446	E-150 and Econoline 150	22	2023-02-23 08:08:04.02725	2023-02-23 08:08:04.02725
447	E-250 and Econoline 250	22	2023-02-23 08:08:04.050479	2023-02-23 08:08:04.050479
448	E-350 and Econoline 350	22	2023-02-23 08:08:04.070432	2023-02-23 08:08:04.070432
449	Edge	22	2023-02-23 08:08:04.088104	2023-02-23 08:08:04.088104
450	Escape	22	2023-02-23 08:08:04.106993	2023-02-23 08:08:04.106993
451	Escort	22	2023-02-23 08:08:04.128415	2023-02-23 08:08:04.128415
452	Excursion	22	2023-02-23 08:08:04.149403	2023-02-23 08:08:04.149403
453	EXP	22	2023-02-23 08:08:04.17159	2023-02-23 08:08:04.17159
454	Expedition	22	2023-02-23 08:08:04.195572	2023-02-23 08:08:04.195572
455	Expedition EL	22	2023-02-23 08:08:04.216973	2023-02-23 08:08:04.216973
456	Explorer	22	2023-02-23 08:08:04.236003	2023-02-23 08:08:04.236003
457	Explorer Sport Trac	22	2023-02-23 08:08:04.256443	2023-02-23 08:08:04.256443
458	F100	22	2023-02-23 08:08:04.276439	2023-02-23 08:08:04.276439
459	F150	22	2023-02-23 08:08:04.296124	2023-02-23 08:08:04.296124
460	F250	22	2023-02-23 08:08:04.315028	2023-02-23 08:08:04.315028
461	F350	22	2023-02-23 08:08:04.335352	2023-02-23 08:08:04.335352
462	F450	22	2023-02-23 08:08:04.356347	2023-02-23 08:08:04.356347
463	Fairmont	22	2023-02-23 08:08:04.375906	2023-02-23 08:08:04.375906
464	Festiva	22	2023-02-23 08:08:04.395943	2023-02-23 08:08:04.395943
465	Fiesta	22	2023-02-23 08:08:04.421235	2023-02-23 08:08:04.421235
466	Five Hundred	22	2023-02-23 08:08:04.438957	2023-02-23 08:08:04.438957
467	Flex	22	2023-02-23 08:08:04.458909	2023-02-23 08:08:04.458909
468	Focus	22	2023-02-23 08:08:04.478695	2023-02-23 08:08:04.478695
469	Freestar	22	2023-02-23 08:08:04.499501	2023-02-23 08:08:04.499501
470	Freestyle	22	2023-02-23 08:08:04.518856	2023-02-23 08:08:04.518856
471	Fusion	22	2023-02-23 08:08:05.205455	2023-02-23 08:08:05.205455
472	Granada	22	2023-02-23 08:08:05.211044	2023-02-23 08:08:05.211044
473	GT	22	2023-02-23 08:08:11.963556	2023-02-23 08:08:11.963556
474	LTD	22	2023-02-23 08:08:12.055681	2023-02-23 08:08:12.055681
475	Mustang	22	2023-02-23 08:08:12.113264	2023-02-23 08:08:12.113264
476	Probe	22	2023-02-23 08:08:12.15203	2023-02-23 08:08:12.15203
477	Ranger	22	2023-02-23 08:08:12.175771	2023-02-23 08:08:12.175771
478	Taurus	22	2023-02-23 08:08:12.194246	2023-02-23 08:08:12.194246
479	Taurus X	22	2023-02-23 08:08:12.211835	2023-02-23 08:08:12.211835
480	Tempo	22	2023-02-23 08:08:12.230768	2023-02-23 08:08:12.230768
481	Thunderbird	22	2023-02-23 08:08:12.252296	2023-02-23 08:08:12.252296
482	Transit Connect	22	2023-02-23 08:08:12.27218	2023-02-23 08:08:12.27218
483	Windstar	22	2023-02-23 08:08:12.293731	2023-02-23 08:08:12.293731
484	ZX2 Escort	22	2023-02-23 08:08:12.314332	2023-02-23 08:08:12.314332
485	Other Ford Models	22	2023-02-23 08:08:12.333474	2023-02-23 08:08:12.333474
486	Sprinter	23	2023-02-23 08:08:12.352042	2023-02-23 08:08:12.352042
487	Metro	24	2023-02-23 08:08:12.373712	2023-02-23 08:08:12.373712
488	Prizm	24	2023-02-23 08:08:12.391865	2023-02-23 08:08:12.391865
489	Spectrum	24	2023-02-23 08:08:12.410624	2023-02-23 08:08:12.410624
490	Storm	24	2023-02-23 08:08:12.429253	2023-02-23 08:08:12.429253
491	Tracker	24	2023-02-23 08:08:12.450333	2023-02-23 08:08:12.450333
492	Other Geo Models	24	2023-02-23 08:08:12.469267	2023-02-23 08:08:12.469267
493	Acadia	25	2023-02-23 08:08:12.487445	2023-02-23 08:08:12.487445
494	Caballero	25	2023-02-23 08:08:12.509529	2023-02-23 08:08:12.509529
495	Canyon	25	2023-02-23 08:08:12.527922	2023-02-23 08:08:12.527922
496	Envoy	25	2023-02-23 08:08:12.545875	2023-02-23 08:08:12.545875
497	Envoy XL	25	2023-02-23 08:08:12.565023	2023-02-23 08:08:12.565023
498	Envoy XUV	25	2023-02-23 08:08:12.584889	2023-02-23 08:08:12.584889
499	Jimmy	25	2023-02-23 08:08:12.602771	2023-02-23 08:08:12.602771
500	Rally Wagon	25	2023-02-23 08:08:12.621557	2023-02-23 08:08:12.621557
501	S15 Jimmy	25	2023-02-23 08:08:12.642208	2023-02-23 08:08:12.642208
502	S15 Pickup	25	2023-02-23 08:08:12.661405	2023-02-23 08:08:12.661405
503	Safari	25	2023-02-23 08:08:12.680464	2023-02-23 08:08:12.680464
504	Savana	25	2023-02-23 08:08:12.701246	2023-02-23 08:08:12.701246
505	Sierra C/K1500	25	2023-02-23 08:08:12.724029	2023-02-23 08:08:12.724029
506	Sierra C/K2500	25	2023-02-23 08:08:12.746327	2023-02-23 08:08:12.746327
507	Sierra C/K3500	25	2023-02-23 08:08:12.76726	2023-02-23 08:08:12.76726
508	Sonoma	25	2023-02-23 08:08:12.786367	2023-02-23 08:08:12.786367
509	Suburban	25	2023-02-23 08:08:12.810168	2023-02-23 08:08:12.810168
510	Syclone	25	2023-02-23 08:08:12.828097	2023-02-23 08:08:12.828097
511	Terrain	25	2023-02-23 08:08:12.848527	2023-02-23 08:08:12.848527
512	TopKick C4500	25	2023-02-23 08:08:12.868208	2023-02-23 08:08:12.868208
513	Typhoon	25	2023-02-23 08:08:12.886744	2023-02-23 08:08:12.886744
514	Vandura	25	2023-02-23 08:08:12.906247	2023-02-23 08:08:12.906247
515	Yukon	25	2023-02-23 08:08:12.927913	2023-02-23 08:08:12.927913
516	Yukon XL	25	2023-02-23 08:08:12.94895	2023-02-23 08:08:12.94895
517	Other GMC Models	25	2023-02-23 08:08:12.972343	2023-02-23 08:08:12.972343
518	Accord	26	2023-02-23 08:08:12.994127	2023-02-23 08:08:12.994127
519	Civic	26	2023-02-23 08:08:13.014933	2023-02-23 08:08:13.014933
520	CR-V	26	2023-02-23 08:08:13.031717	2023-02-23 08:08:13.031717
521	CR-Z	26	2023-02-23 08:08:13.051099	2023-02-23 08:08:13.051099
522	CRX	26	2023-02-23 08:08:13.072501	2023-02-23 08:08:13.072501
523	Crosstour and Accord Crosstour Models (2)	26	2023-02-23 08:08:13.09807	2023-02-23 08:08:13.09807
524	 - Accord Crosstour	26	2023-02-23 08:08:13.119433	2023-02-23 08:08:13.119433
525	 - Crosstour	26	2023-02-23 08:08:13.141117	2023-02-23 08:08:13.141117
526	Del Sol	26	2023-02-23 08:08:13.159883	2023-02-23 08:08:13.159883
527	Element	26	2023-02-23 08:08:13.181097	2023-02-23 08:08:13.181097
528	Fit	26	2023-02-23 08:08:13.203653	2023-02-23 08:08:13.203653
529	Insight	26	2023-02-23 08:08:13.223609	2023-02-23 08:08:13.223609
530	Odyssey	26	2023-02-23 08:08:13.243092	2023-02-23 08:08:13.243092
531	Passport	26	2023-02-23 08:08:13.26229	2023-02-23 08:08:13.26229
532	Pilot	26	2023-02-23 08:08:13.281102	2023-02-23 08:08:13.281102
533	Prelude	26	2023-02-23 08:08:13.300018	2023-02-23 08:08:13.300018
534	Ridgeline	26	2023-02-23 08:08:13.320525	2023-02-23 08:08:13.320525
535	S2000	26	2023-02-23 08:08:13.340317	2023-02-23 08:08:13.340317
536	Other Honda Models	26	2023-02-23 08:08:13.362173	2023-02-23 08:08:13.362173
537	H1	27	2023-02-23 08:08:13.38172	2023-02-23 08:08:13.38172
538	H2	27	2023-02-23 08:08:13.400091	2023-02-23 08:08:13.400091
539	H3	27	2023-02-23 08:08:13.418334	2023-02-23 08:08:13.418334
540	H3T	27	2023-02-23 08:08:13.440347	2023-02-23 08:08:13.440347
541	Other Hummer Models	27	2023-02-23 08:08:13.463186	2023-02-23 08:08:13.463186
542	Accent	28	2023-02-23 08:08:13.482777	2023-02-23 08:08:13.482777
543	Azera	28	2023-02-23 08:08:13.501154	2023-02-23 08:08:13.501154
544	Elantra	28	2023-02-23 08:08:13.521649	2023-02-23 08:08:13.521649
545	Elantra Coupe	28	2023-02-23 08:08:13.542014	2023-02-23 08:08:13.542014
546	Elantra Touring	28	2023-02-23 08:08:13.561577	2023-02-23 08:08:13.561577
547	Entourage	28	2023-02-23 08:08:13.584299	2023-02-23 08:08:13.584299
548	Equus	28	2023-02-23 08:08:13.603189	2023-02-23 08:08:13.603189
549	Excel	28	2023-02-23 08:08:13.623381	2023-02-23 08:08:13.623381
550	Genesis	28	2023-02-23 08:08:13.646937	2023-02-23 08:08:13.646937
551	Genesis Coupe	28	2023-02-23 08:08:13.666895	2023-02-23 08:08:13.666895
552	Santa Fe	28	2023-02-23 08:08:13.685157	2023-02-23 08:08:13.685157
553	Scoupe	28	2023-02-23 08:08:13.704587	2023-02-23 08:08:13.704587
554	Sonata	28	2023-02-23 08:08:13.724798	2023-02-23 08:08:13.724798
555	Tiburon	28	2023-02-23 08:08:13.744203	2023-02-23 08:08:13.744203
556	Tucson	28	2023-02-23 08:08:13.763931	2023-02-23 08:08:13.763931
557	Veloster	28	2023-02-23 08:08:13.787472	2023-02-23 08:08:13.787472
558	Veracruz	28	2023-02-23 08:08:13.806987	2023-02-23 08:08:13.806987
559	XG300	28	2023-02-23 08:08:13.827948	2023-02-23 08:08:13.827948
560	XG350	28	2023-02-23 08:08:13.852192	2023-02-23 08:08:13.852192
561	Other Hyundai Models	28	2023-02-23 08:08:13.87647	2023-02-23 08:08:13.87647
562	EX Models (2)	29	2023-02-23 08:08:13.896908	2023-02-23 08:08:13.896908
563	 - EX35	29	2023-02-23 08:08:13.917043	2023-02-23 08:08:13.917043
564	 - EX37	29	2023-02-23 08:08:13.937429	2023-02-23 08:08:13.937429
565	FX Models (4)	29	2023-02-23 08:08:13.956465	2023-02-23 08:08:13.956465
566	 - FX35	29	2023-02-23 08:08:13.975216	2023-02-23 08:08:13.975216
567	 - FX37	29	2023-02-23 08:08:13.995458	2023-02-23 08:08:13.995458
568	 - FX45	29	2023-02-23 08:08:14.017097	2023-02-23 08:08:14.017097
569	 - FX50	29	2023-02-23 08:08:14.037952	2023-02-23 08:08:14.037952
570	G Models (4)	29	2023-02-23 08:08:14.061554	2023-02-23 08:08:14.061554
571	 - G20	29	2023-02-23 08:08:14.085463	2023-02-23 08:08:14.085463
572	 - G25	29	2023-02-23 08:08:14.108466	2023-02-23 08:08:14.108466
573	 - G35	29	2023-02-23 08:08:14.127434	2023-02-23 08:08:14.127434
574	 - G37	29	2023-02-23 08:08:14.883413	2023-02-23 08:08:14.883413
575	I Models (2)	29	2023-02-23 08:08:14.888927	2023-02-23 08:08:14.888927
576	 - I30	29	2023-02-23 08:08:20.453796	2023-02-23 08:08:20.453796
577	 - I35	29	2023-02-23 08:08:20.557901	2023-02-23 08:08:20.557901
578	J Models (1)	29	2023-02-23 08:08:20.617029	2023-02-23 08:08:20.617029
579	 - J30	29	2023-02-23 08:08:20.656667	2023-02-23 08:08:20.656667
580	JX Models (1)	29	2023-02-23 08:08:20.686942	2023-02-23 08:08:20.686942
581	 - JX35	29	2023-02-23 08:08:20.716292	2023-02-23 08:08:20.716292
582	M Models (6)	29	2023-02-23 08:08:20.73776	2023-02-23 08:08:20.73776
583	 - M30	29	2023-02-23 08:08:20.758338	2023-02-23 08:08:20.758338
584	 - M35	29	2023-02-23 08:08:20.776415	2023-02-23 08:08:20.776415
585	 - M35h	29	2023-02-23 08:08:20.796662	2023-02-23 08:08:20.796662
586	 - M37	29	2023-02-23 08:08:20.815558	2023-02-23 08:08:20.815558
587	 - M45	29	2023-02-23 08:08:20.835059	2023-02-23 08:08:20.835059
588	 - M56	29	2023-02-23 08:08:20.856687	2023-02-23 08:08:20.856687
589	Q Models (1)	29	2023-02-23 08:08:20.877161	2023-02-23 08:08:20.877161
590	 - Q45	29	2023-02-23 08:08:20.896877	2023-02-23 08:08:20.896877
591	QX Models (2)	29	2023-02-23 08:08:20.923818	2023-02-23 08:08:20.923818
592	 - QX4	29	2023-02-23 08:08:20.946029	2023-02-23 08:08:20.946029
593	 - QX56	29	2023-02-23 08:08:20.970535	2023-02-23 08:08:20.970535
594	Other Infiniti Models	29	2023-02-23 08:08:20.994688	2023-02-23 08:08:20.994688
595	Amigo	30	2023-02-23 08:08:21.016371	2023-02-23 08:08:21.016371
596	Ascender	30	2023-02-23 08:08:21.034535	2023-02-23 08:08:21.034535
597	Axiom	30	2023-02-23 08:08:21.053862	2023-02-23 08:08:21.053862
598	Hombre	30	2023-02-23 08:08:21.072821	2023-02-23 08:08:21.072821
599	i-280	30	2023-02-23 08:08:21.090928	2023-02-23 08:08:21.090928
600	i-290	30	2023-02-23 08:08:21.109225	2023-02-23 08:08:21.109225
601	i-350	30	2023-02-23 08:08:21.131378	2023-02-23 08:08:21.131378
602	i-370	30	2023-02-23 08:08:21.150419	2023-02-23 08:08:21.150419
603	I-Mark	30	2023-02-23 08:08:21.167956	2023-02-23 08:08:21.167956
604	Impulse	30	2023-02-23 08:08:21.189161	2023-02-23 08:08:21.189161
605	Oasis	30	2023-02-23 08:08:21.209537	2023-02-23 08:08:21.209537
606	Pickup	30	2023-02-23 08:08:21.229356	2023-02-23 08:08:21.229356
607	Rodeo	30	2023-02-23 08:08:21.251157	2023-02-23 08:08:21.251157
608	Stylus	30	2023-02-23 08:08:21.271557	2023-02-23 08:08:21.271557
609	Trooper	30	2023-02-23 08:08:21.290719	2023-02-23 08:08:21.290719
610	Trooper II	30	2023-02-23 08:08:21.310227	2023-02-23 08:08:21.310227
611	VehiCROSS	30	2023-02-23 08:08:21.331548	2023-02-23 08:08:21.331548
612	Other Isuzu Models	30	2023-02-23 08:08:21.351783	2023-02-23 08:08:21.351783
613	S-Type	31	2023-02-23 08:08:21.373627	2023-02-23 08:08:21.373627
614	X-Type	31	2023-02-23 08:08:21.398971	2023-02-23 08:08:21.398971
615	XF	31	2023-02-23 08:08:21.421129	2023-02-23 08:08:21.421129
616	XJ Series (10)	31	2023-02-23 08:08:21.440907	2023-02-23 08:08:21.440907
617	 - XJ12	31	2023-02-23 08:08:21.464646	2023-02-23 08:08:21.464646
618	 - XJ6	31	2023-02-23 08:08:21.483994	2023-02-23 08:08:21.483994
619	 - XJR	31	2023-02-23 08:08:21.50305	2023-02-23 08:08:21.50305
620	 - XJR-S	31	2023-02-23 08:08:21.522992	2023-02-23 08:08:21.522992
621	 - XJS	31	2023-02-23 08:08:21.543104	2023-02-23 08:08:21.543104
622	 - XJ Vanden Plas	31	2023-02-23 08:08:21.563124	2023-02-23 08:08:21.563124
623	 - XJ	31	2023-02-23 08:08:21.584516	2023-02-23 08:08:21.584516
624	 - XJ8	31	2023-02-23 08:08:21.606292	2023-02-23 08:08:21.606292
625	 - XJ8 L	31	2023-02-23 08:08:21.625521	2023-02-23 08:08:21.625521
626	 - XJ Sport	31	2023-02-23 08:08:21.648202	2023-02-23 08:08:21.648202
627	XK Series (3)	31	2023-02-23 08:08:21.672087	2023-02-23 08:08:21.672087
628	 - XK8	31	2023-02-23 08:08:21.689783	2023-02-23 08:08:21.689783
629	 - XK	31	2023-02-23 08:08:21.708438	2023-02-23 08:08:21.708438
630	 - XKR	31	2023-02-23 08:08:21.73016	2023-02-23 08:08:21.73016
631	Other Jaguar Models	31	2023-02-23 08:08:21.750072	2023-02-23 08:08:21.750072
632	Cherokee	32	2023-02-23 08:08:21.768439	2023-02-23 08:08:21.768439
633	CJ	32	2023-02-23 08:08:21.791205	2023-02-23 08:08:21.791205
634	Comanche	32	2023-02-23 08:08:21.810259	2023-02-23 08:08:21.810259
635	Commander	32	2023-02-23 08:08:21.82865	2023-02-23 08:08:21.82865
636	Compass	32	2023-02-23 08:08:21.852781	2023-02-23 08:08:21.852781
637	Grand Cherokee	32	2023-02-23 08:08:21.877275	2023-02-23 08:08:21.877275
638	Grand Wagoneer	32	2023-02-23 08:08:21.897799	2023-02-23 08:08:21.897799
639	Liberty	32	2023-02-23 08:08:21.918407	2023-02-23 08:08:21.918407
640	Patriot	32	2023-02-23 08:08:21.937467	2023-02-23 08:08:21.937467
641	Pickup	32	2023-02-23 08:08:21.956788	2023-02-23 08:08:21.956788
642	Scrambler	32	2023-02-23 08:08:21.977125	2023-02-23 08:08:21.977125
643	Wagoneer	32	2023-02-23 08:08:21.997668	2023-02-23 08:08:21.997668
644	Wrangler	32	2023-02-23 08:08:22.018379	2023-02-23 08:08:22.018379
645	Other Jeep Models	32	2023-02-23 08:08:22.041981	2023-02-23 08:08:22.041981
646	Amanti	33	2023-02-23 08:08:22.064766	2023-02-23 08:08:22.064766
647	Borrego	33	2023-02-23 08:08:22.08342	2023-02-23 08:08:22.08342
648	Forte	33	2023-02-23 08:08:22.105871	2023-02-23 08:08:22.105871
649	Forte Koup	33	2023-02-23 08:08:22.125377	2023-02-23 08:08:22.125377
650	Optima	33	2023-02-23 08:08:22.143898	2023-02-23 08:08:22.143898
651	Rio	33	2023-02-23 08:08:22.161742	2023-02-23 08:08:22.161742
652	Rio5	33	2023-02-23 08:08:22.181891	2023-02-23 08:08:22.181891
653	Rondo	33	2023-02-23 08:08:22.200858	2023-02-23 08:08:22.200858
654	Sedona	33	2023-02-23 08:08:22.222851	2023-02-23 08:08:22.222851
655	Sephia	33	2023-02-23 08:08:22.247282	2023-02-23 08:08:22.247282
656	Sorento	33	2023-02-23 08:08:22.266818	2023-02-23 08:08:22.266818
657	Soul	33	2023-02-23 08:08:22.289654	2023-02-23 08:08:22.289654
658	Spectra	33	2023-02-23 08:08:22.31396	2023-02-23 08:08:22.31396
659	Spectra5	33	2023-02-23 08:08:22.338379	2023-02-23 08:08:22.338379
660	Sportage	33	2023-02-23 08:08:22.358342	2023-02-23 08:08:22.358342
661	Other Kia Models	33	2023-02-23 08:08:22.381492	2023-02-23 08:08:22.381492
662	Aventador	34	2023-02-23 08:08:22.403867	2023-02-23 08:08:22.403867
663	Countach	34	2023-02-23 08:08:22.422361	2023-02-23 08:08:22.422361
664	Diablo	34	2023-02-23 08:08:22.444286	2023-02-23 08:08:22.444286
665	Gallardo	34	2023-02-23 08:08:22.468396	2023-02-23 08:08:22.468396
666	Jalpa	34	2023-02-23 08:08:22.491316	2023-02-23 08:08:22.491316
667	LM002	34	2023-02-23 08:08:22.511708	2023-02-23 08:08:22.511708
668	Murcielago	34	2023-02-23 08:08:22.537033	2023-02-23 08:08:22.537033
669	Other Lamborghini Models	34	2023-02-23 08:08:22.556904	2023-02-23 08:08:22.556904
670	Beta	35	2023-02-23 08:08:22.575283	2023-02-23 08:08:22.575283
671	Zagato	35	2023-02-23 08:08:22.596311	2023-02-23 08:08:22.596311
672	Other Lancia Models	35	2023-02-23 08:08:22.616504	2023-02-23 08:08:22.616504
673	Defender	36	2023-02-23 08:08:22.635851	2023-02-23 08:08:22.635851
674	Discovery	36	2023-02-23 08:08:22.658213	2023-02-23 08:08:22.658213
675	Freelander	36	2023-02-23 08:08:22.676595	2023-02-23 08:08:22.676595
676	LR2	36	2023-02-23 08:08:22.698125	2023-02-23 08:08:22.698125
677	LR3	36	2023-02-23 08:08:22.720874	2023-02-23 08:08:22.720874
678	LR4	36	2023-02-23 08:08:22.74265	2023-02-23 08:08:22.74265
679	Range Rover	36	2023-02-23 08:08:22.765345	2023-02-23 08:08:22.765345
680	Range Rover Evoque	36	2023-02-23 08:08:22.786774	2023-02-23 08:08:22.786774
681	Range Rover Sport	36	2023-02-23 08:08:22.808357	2023-02-23 08:08:22.808357
682	Other Land Rover Models	36	2023-02-23 08:08:22.829101	2023-02-23 08:08:22.829101
683	CT Models (1)	37	2023-02-23 08:08:23.467346	2023-02-23 08:08:23.467346
684	 - CT 200h	37	2023-02-23 08:08:23.473953	2023-02-23 08:08:23.473953
685	ES Models (5)	37	2023-02-23 08:08:29.320844	2023-02-23 08:08:29.320844
686	 - ES 250	37	2023-02-23 08:08:29.413003	2023-02-23 08:08:29.413003
687	 - ES 300	37	2023-02-23 08:08:29.48617	2023-02-23 08:08:29.48617
688	 - ES 300h	37	2023-02-23 08:08:29.531924	2023-02-23 08:08:29.531924
689	 - ES 330	37	2023-02-23 08:08:29.562296	2023-02-23 08:08:29.562296
690	 - ES 350	37	2023-02-23 08:08:29.5831	2023-02-23 08:08:29.5831
691	GS Models (6)	37	2023-02-23 08:08:29.605906	2023-02-23 08:08:29.605906
692	 - GS 300	37	2023-02-23 08:08:29.630071	2023-02-23 08:08:29.630071
693	 - GS 350	37	2023-02-23 08:08:29.652192	2023-02-23 08:08:29.652192
694	 - GS 400	37	2023-02-23 08:08:29.676573	2023-02-23 08:08:29.676573
695	 - GS 430	37	2023-02-23 08:08:29.701519	2023-02-23 08:08:29.701519
696	 - GS 450h	37	2023-02-23 08:08:29.721132	2023-02-23 08:08:29.721132
697	 - GS 460	37	2023-02-23 08:08:29.743	2023-02-23 08:08:29.743
698	GX Models (2)	37	2023-02-23 08:08:29.763748	2023-02-23 08:08:29.763748
699	 - GX 460	37	2023-02-23 08:08:29.783773	2023-02-23 08:08:29.783773
700	 - GX 470	37	2023-02-23 08:08:29.806297	2023-02-23 08:08:29.806297
701	HS Models (1)	37	2023-02-23 08:08:29.830574	2023-02-23 08:08:29.830574
702	 - HS 250h	37	2023-02-23 08:08:29.858255	2023-02-23 08:08:29.858255
703	IS Models (6)	37	2023-02-23 08:08:29.880384	2023-02-23 08:08:29.880384
704	 - IS 250	37	2023-02-23 08:08:29.902721	2023-02-23 08:08:29.902721
705	 - IS 250C	37	2023-02-23 08:08:29.925608	2023-02-23 08:08:29.925608
706	 - IS 300	37	2023-02-23 08:08:29.949237	2023-02-23 08:08:29.949237
707	 - IS 350	37	2023-02-23 08:08:29.969371	2023-02-23 08:08:29.969371
708	 - IS 350C	37	2023-02-23 08:08:29.99113	2023-02-23 08:08:29.99113
709	 - IS F	37	2023-02-23 08:08:30.010948	2023-02-23 08:08:30.010948
710	LFA	37	2023-02-23 08:08:30.033172	2023-02-23 08:08:30.033172
711	LS Models (4)	37	2023-02-23 08:08:30.057248	2023-02-23 08:08:30.057248
712	 - LS 400	37	2023-02-23 08:08:30.078449	2023-02-23 08:08:30.078449
713	 - LS 430	37	2023-02-23 08:08:30.100505	2023-02-23 08:08:30.100505
714	 - LS 460	37	2023-02-23 08:08:30.121454	2023-02-23 08:08:30.121454
715	 - LS 600h	37	2023-02-23 08:08:30.141484	2023-02-23 08:08:30.141484
716	LX Models (3)	37	2023-02-23 08:08:30.161687	2023-02-23 08:08:30.161687
717	 - LX 450	37	2023-02-23 08:08:30.183252	2023-02-23 08:08:30.183252
718	 - LX 470	37	2023-02-23 08:08:30.202822	2023-02-23 08:08:30.202822
719	 - LX 570	37	2023-02-23 08:08:30.222778	2023-02-23 08:08:30.222778
720	RX Models (5)	37	2023-02-23 08:08:30.246748	2023-02-23 08:08:30.246748
721	 - RX 300	37	2023-02-23 08:08:30.270919	2023-02-23 08:08:30.270919
722	 - RX 330	37	2023-02-23 08:08:30.292384	2023-02-23 08:08:30.292384
723	 - RX 350	37	2023-02-23 08:08:30.314918	2023-02-23 08:08:30.314918
724	 - RX 400h	37	2023-02-23 08:08:30.335158	2023-02-23 08:08:30.335158
725	 - RX 450h	37	2023-02-23 08:08:30.355246	2023-02-23 08:08:30.355246
726	SC Models (3)	37	2023-02-23 08:08:30.376625	2023-02-23 08:08:30.376625
727	 - SC 300	37	2023-02-23 08:08:30.39678	2023-02-23 08:08:30.39678
728	 - SC 400	37	2023-02-23 08:08:30.419164	2023-02-23 08:08:30.419164
729	 - SC 430	37	2023-02-23 08:08:30.44793	2023-02-23 08:08:30.44793
730	Other Lexus Models	37	2023-02-23 08:08:30.470956	2023-02-23 08:08:30.470956
731	Aviator	38	2023-02-23 08:08:30.490617	2023-02-23 08:08:30.490617
732	Blackwood	38	2023-02-23 08:08:30.512862	2023-02-23 08:08:30.512862
733	Continental	38	2023-02-23 08:08:30.530634	2023-02-23 08:08:30.530634
734	LS	38	2023-02-23 08:08:30.54897	2023-02-23 08:08:30.54897
735	Mark LT	38	2023-02-23 08:08:30.569728	2023-02-23 08:08:30.569728
736	Mark VI	38	2023-02-23 08:08:30.589117	2023-02-23 08:08:30.589117
737	Mark VII	38	2023-02-23 08:08:30.608052	2023-02-23 08:08:30.608052
738	Mark VIII	38	2023-02-23 08:08:30.630835	2023-02-23 08:08:30.630835
739	MKS	38	2023-02-23 08:08:30.650819	2023-02-23 08:08:30.650819
740	MKT	38	2023-02-23 08:08:30.671777	2023-02-23 08:08:30.671777
741	MKX	38	2023-02-23 08:08:30.696308	2023-02-23 08:08:30.696308
742	MKZ	38	2023-02-23 08:08:30.717335	2023-02-23 08:08:30.717335
743	Navigator	38	2023-02-23 08:08:30.735501	2023-02-23 08:08:30.735501
744	Navigator L	38	2023-02-23 08:08:30.755779	2023-02-23 08:08:30.755779
745	Town Car	38	2023-02-23 08:08:30.775846	2023-02-23 08:08:30.775846
746	Zephyr	38	2023-02-23 08:08:30.796022	2023-02-23 08:08:30.796022
747	Other Lincoln Models	38	2023-02-23 08:08:30.817633	2023-02-23 08:08:30.817633
748	Elan	39	2023-02-23 08:08:30.836314	2023-02-23 08:08:30.836314
749	Elise	39	2023-02-23 08:08:30.855153	2023-02-23 08:08:30.855153
750	Esprit	39	2023-02-23 08:08:30.874783	2023-02-23 08:08:30.874783
751	Evora	39	2023-02-23 08:08:30.89337	2023-02-23 08:08:30.89337
752	Exige	39	2023-02-23 08:08:30.915139	2023-02-23 08:08:30.915139
753	Other Lotus Models	39	2023-02-23 08:08:30.93903	2023-02-23 08:08:30.93903
754	430	40	2023-02-23 08:08:30.958861	2023-02-23 08:08:30.958861
755	Biturbo	40	2023-02-23 08:08:30.976958	2023-02-23 08:08:30.976958
756	Coupe	40	2023-02-23 08:08:30.997167	2023-02-23 08:08:30.997167
757	GranSport	40	2023-02-23 08:08:31.016557	2023-02-23 08:08:31.016557
758	GranTurismo	40	2023-02-23 08:08:31.03567	2023-02-23 08:08:31.03567
759	Quattroporte	40	2023-02-23 08:08:31.056075	2023-02-23 08:08:31.056075
760	Spyder	40	2023-02-23 08:08:31.079698	2023-02-23 08:08:31.079698
761	Other Maserati Models	40	2023-02-23 08:08:31.102325	2023-02-23 08:08:31.102325
762	57	41	2023-02-23 08:08:31.122017	2023-02-23 08:08:31.122017
763	62	41	2023-02-23 08:08:31.142825	2023-02-23 08:08:31.142825
764	Other Maybach Models	41	2023-02-23 08:08:31.162736	2023-02-23 08:08:31.162736
765	323	42	2023-02-23 08:08:31.181637	2023-02-23 08:08:31.181637
766	626	42	2023-02-23 08:08:31.199873	2023-02-23 08:08:31.199873
767	929	42	2023-02-23 08:08:31.218957	2023-02-23 08:08:31.218957
768	B-Series Pickup	42	2023-02-23 08:08:31.239728	2023-02-23 08:08:31.239728
769	CX-5	42	2023-02-23 08:08:31.258893	2023-02-23 08:08:31.258893
770	CX-7	42	2023-02-23 08:08:31.279608	2023-02-23 08:08:31.279608
771	CX-9	42	2023-02-23 08:08:31.299555	2023-02-23 08:08:31.299555
772	GLC	42	2023-02-23 08:08:31.319999	2023-02-23 08:08:31.319999
773	MAZDA2	42	2023-02-23 08:08:31.340277	2023-02-23 08:08:31.340277
774	MAZDA3	42	2023-02-23 08:08:31.360899	2023-02-23 08:08:31.360899
775	MAZDA5	42	2023-02-23 08:08:31.382841	2023-02-23 08:08:31.382841
776	MAZDA6	42	2023-02-23 08:08:31.402096	2023-02-23 08:08:31.402096
777	MAZDASPEED3	42	2023-02-23 08:08:31.423313	2023-02-23 08:08:31.423313
778	MAZDASPEED6	42	2023-02-23 08:08:31.443351	2023-02-23 08:08:31.443351
779	Miata MX5	42	2023-02-23 08:08:31.462578	2023-02-23 08:08:31.462578
780	Millenia	42	2023-02-23 08:08:31.482562	2023-02-23 08:08:31.482562
781	MPV	42	2023-02-23 08:08:31.503149	2023-02-23 08:08:31.503149
782	MX3	42	2023-02-23 08:08:31.526225	2023-02-23 08:08:31.526225
783	MX6	42	2023-02-23 08:08:31.547934	2023-02-23 08:08:31.547934
784	Navajo	42	2023-02-23 08:08:31.572396	2023-02-23 08:08:31.572396
785	Protege	42	2023-02-23 08:08:32.170495	2023-02-23 08:08:32.170495
786	Protege5	42	2023-02-23 08:08:32.176774	2023-02-23 08:08:32.176774
787	RX-7	42	2023-02-23 08:08:39.074057	2023-02-23 08:08:39.074057
788	RX-8	42	2023-02-23 08:08:39.166946	2023-02-23 08:08:39.166946
789	Tribute	42	2023-02-23 08:08:39.216861	2023-02-23 08:08:39.216861
1123	4500	55	2023-02-23 08:09:06.372157	2023-02-23 08:09:06.372157
790	Other Mazda Models	42	2023-02-23 08:08:39.248591	2023-02-23 08:08:39.248591
791	MP4-12C	43	2023-02-23 08:08:39.276991	2023-02-23 08:08:39.276991
792	190 Class (2)	44	2023-02-23 08:08:39.300194	2023-02-23 08:08:39.300194
793	 - 190D	44	2023-02-23 08:08:39.322188	2023-02-23 08:08:39.322188
794	 - 190E	44	2023-02-23 08:08:39.343792	2023-02-23 08:08:39.343792
795	240 Class (1)	44	2023-02-23 08:08:39.362767	2023-02-23 08:08:39.362767
796	 - 240D	44	2023-02-23 08:08:39.384077	2023-02-23 08:08:39.384077
797	300 Class / E Class (6)	44	2023-02-23 08:08:39.405694	2023-02-23 08:08:39.405694
798	 - 300CD	44	2023-02-23 08:08:39.425716	2023-02-23 08:08:39.425716
799	 - 300CE	44	2023-02-23 08:08:39.445375	2023-02-23 08:08:39.445375
800	 - 300D	44	2023-02-23 08:08:39.46625	2023-02-23 08:08:39.46625
801	 - 300E	44	2023-02-23 08:08:39.486237	2023-02-23 08:08:39.486237
802	 - 300TD	44	2023-02-23 08:08:39.506214	2023-02-23 08:08:39.506214
803	 - 300TE	44	2023-02-23 08:08:39.528713	2023-02-23 08:08:39.528713
804	C Class (13)	44	2023-02-23 08:08:39.548383	2023-02-23 08:08:39.548383
805	 - C220	44	2023-02-23 08:08:39.568956	2023-02-23 08:08:39.568956
806	 - C230	44	2023-02-23 08:08:39.589337	2023-02-23 08:08:39.589337
807	 - C240	44	2023-02-23 08:08:39.609458	2023-02-23 08:08:39.609458
808	 - C250	44	2023-02-23 08:08:39.629572	2023-02-23 08:08:39.629572
809	 - C280	44	2023-02-23 08:08:39.649408	2023-02-23 08:08:39.649408
810	 - C300	44	2023-02-23 08:08:39.668157	2023-02-23 08:08:39.668157
811	 - C320	44	2023-02-23 08:08:39.68931	2023-02-23 08:08:39.68931
812	 - C32 AMG	44	2023-02-23 08:08:39.711165	2023-02-23 08:08:39.711165
813	 - C350	44	2023-02-23 08:08:39.732364	2023-02-23 08:08:39.732364
814	 - C36 AMG	44	2023-02-23 08:08:39.754089	2023-02-23 08:08:39.754089
815	 - C43 AMG	44	2023-02-23 08:08:39.779882	2023-02-23 08:08:39.779882
816	 - C55 AMG	44	2023-02-23 08:08:39.802026	2023-02-23 08:08:39.802026
817	 - C63 AMG	44	2023-02-23 08:08:39.824062	2023-02-23 08:08:39.824062
818	CL Class (6)	44	2023-02-23 08:08:39.843153	2023-02-23 08:08:39.843153
819	 - CL500	44	2023-02-23 08:08:39.863005	2023-02-23 08:08:39.863005
820	 - CL550	44	2023-02-23 08:08:39.885232	2023-02-23 08:08:39.885232
821	 - CL55 AMG	44	2023-02-23 08:08:39.905289	2023-02-23 08:08:39.905289
822	 - CL600	44	2023-02-23 08:08:39.926772	2023-02-23 08:08:39.926772
823	 - CL63 AMG	44	2023-02-23 08:08:39.95403	2023-02-23 08:08:39.95403
824	 - CL65 AMG	44	2023-02-23 08:08:39.975984	2023-02-23 08:08:39.975984
825	CLK Class (7)	44	2023-02-23 08:08:40.003219	2023-02-23 08:08:40.003219
826	 - CLK320	44	2023-02-23 08:08:40.024126	2023-02-23 08:08:40.024126
827	 - CLK350	44	2023-02-23 08:08:40.046446	2023-02-23 08:08:40.046446
828	 - CLK430	44	2023-02-23 08:08:40.067153	2023-02-23 08:08:40.067153
829	 - CLK500	44	2023-02-23 08:08:40.086638	2023-02-23 08:08:40.086638
830	 - CLK550	44	2023-02-23 08:08:40.107455	2023-02-23 08:08:40.107455
831	 - CLK55 AMG	44	2023-02-23 08:08:40.127969	2023-02-23 08:08:40.127969
832	 - CLK63 AMG	44	2023-02-23 08:08:40.148437	2023-02-23 08:08:40.148437
833	CLS Class (4)	44	2023-02-23 08:08:40.171672	2023-02-23 08:08:40.171672
834	 - CLS500	44	2023-02-23 08:08:40.193651	2023-02-23 08:08:40.193651
835	 - CLS550	44	2023-02-23 08:08:40.217005	2023-02-23 08:08:40.217005
836	 - CLS55 AMG	44	2023-02-23 08:08:40.238599	2023-02-23 08:08:40.238599
837	 - CLS63 AMG	44	2023-02-23 08:08:40.261548	2023-02-23 08:08:40.261548
838	E Class (18)	44	2023-02-23 08:08:40.281129	2023-02-23 08:08:40.281129
839	 - 260E	44	2023-02-23 08:08:40.302697	2023-02-23 08:08:40.302697
840	 - 280CE	44	2023-02-23 08:08:40.322285	2023-02-23 08:08:40.322285
841	 - 280E	44	2023-02-23 08:08:40.342813	2023-02-23 08:08:40.342813
842	 - 400E	44	2023-02-23 08:08:40.362167	2023-02-23 08:08:40.362167
843	 - 500E	44	2023-02-23 08:08:40.385704	2023-02-23 08:08:40.385704
844	 - E300	44	2023-02-23 08:08:40.410773	2023-02-23 08:08:40.410773
845	 - E320	44	2023-02-23 08:08:40.434018	2023-02-23 08:08:40.434018
846	 - E320 Bluetec	44	2023-02-23 08:08:40.459653	2023-02-23 08:08:40.459653
847	 - E320 CDI	44	2023-02-23 08:08:40.484458	2023-02-23 08:08:40.484458
848	 - E350	44	2023-02-23 08:08:40.504573	2023-02-23 08:08:40.504573
849	 - E350 Bluetec	44	2023-02-23 08:08:40.527108	2023-02-23 08:08:40.527108
850	 - E400 Hybrid	44	2023-02-23 08:08:40.548403	2023-02-23 08:08:40.548403
851	 - E420	44	2023-02-23 08:08:40.567622	2023-02-23 08:08:40.567622
852	 - E430	44	2023-02-23 08:08:40.587831	2023-02-23 08:08:40.587831
853	 - E500	44	2023-02-23 08:08:40.612564	2023-02-23 08:08:40.612564
854	 - E550	44	2023-02-23 08:08:40.635265	2023-02-23 08:08:40.635265
855	 - E55 AMG	44	2023-02-23 08:08:40.657919	2023-02-23 08:08:40.657919
856	 - E63 AMG	44	2023-02-23 08:08:40.680102	2023-02-23 08:08:40.680102
857	G Class (4)	44	2023-02-23 08:08:40.703033	2023-02-23 08:08:40.703033
858	 - G500	44	2023-02-23 08:08:40.724132	2023-02-23 08:08:40.724132
859	 - G550	44	2023-02-23 08:08:40.74397	2023-02-23 08:08:40.74397
860	 - G55 AMG	44	2023-02-23 08:08:40.764901	2023-02-23 08:08:40.764901
861	 - G63 AMG	44	2023-02-23 08:08:40.78587	2023-02-23 08:08:40.78587
862	GL Class (5)	44	2023-02-23 08:08:40.8066	2023-02-23 08:08:40.8066
863	 - GL320 Bluetec	44	2023-02-23 08:08:40.833404	2023-02-23 08:08:40.833404
864	 - GL320 CDI	44	2023-02-23 08:08:40.859906	2023-02-23 08:08:40.859906
865	 - GL350 Bluetec	44	2023-02-23 08:08:40.884587	2023-02-23 08:08:40.884587
866	 - GL450	44	2023-02-23 08:08:40.914598	2023-02-23 08:08:40.914598
867	 - GL550	44	2023-02-23 08:08:40.934879	2023-02-23 08:08:40.934879
868	GLK Class (1)	44	2023-02-23 08:08:40.955993	2023-02-23 08:08:40.955993
869	 - GLK350	44	2023-02-23 08:08:40.978638	2023-02-23 08:08:40.978638
870	M Class (11)	44	2023-02-23 08:08:40.998119	2023-02-23 08:08:40.998119
871	 - ML320	44	2023-02-23 08:08:41.020781	2023-02-23 08:08:41.020781
872	 - ML320 Bluetec	44	2023-02-23 08:08:41.590127	2023-02-23 08:08:41.590127
873	 - ML320 CDI	44	2023-02-23 08:08:41.594594	2023-02-23 08:08:41.594594
874	 - ML350	44	2023-02-23 08:08:47.695784	2023-02-23 08:08:47.695784
875	 - ML350 Bluetec	44	2023-02-23 08:08:47.815191	2023-02-23 08:08:47.815191
876	 - ML430	44	2023-02-23 08:08:47.888149	2023-02-23 08:08:47.888149
877	 - ML450 Hybrid	44	2023-02-23 08:08:47.943935	2023-02-23 08:08:47.943935
878	 - ML500	44	2023-02-23 08:08:47.984995	2023-02-23 08:08:47.984995
879	 - ML550	44	2023-02-23 08:08:48.016731	2023-02-23 08:08:48.016731
880	 - ML55 AMG	44	2023-02-23 08:08:48.040157	2023-02-23 08:08:48.040157
881	 - ML63 AMG	44	2023-02-23 08:08:48.061175	2023-02-23 08:08:48.061175
882	R Class (6)	44	2023-02-23 08:08:48.08139	2023-02-23 08:08:48.08139
883	 - R320 Bluetec	44	2023-02-23 08:08:48.103356	2023-02-23 08:08:48.103356
884	 - R320 CDI	44	2023-02-23 08:08:48.122352	2023-02-23 08:08:48.122352
885	 - R350	44	2023-02-23 08:08:48.145895	2023-02-23 08:08:48.145895
886	 - R350 Bluetec	44	2023-02-23 08:08:48.168449	2023-02-23 08:08:48.168449
887	 - R500	44	2023-02-23 08:08:48.192777	2023-02-23 08:08:48.192777
888	 - R63 AMG	44	2023-02-23 08:08:48.259263	2023-02-23 08:08:48.259263
889	S Class (30)	44	2023-02-23 08:08:48.28283	2023-02-23 08:08:48.28283
890	 - 300SD	44	2023-02-23 08:08:48.303111	2023-02-23 08:08:48.303111
891	 - 300SDL	44	2023-02-23 08:08:48.324559	2023-02-23 08:08:48.324559
892	 - 300SE	44	2023-02-23 08:08:48.344458	2023-02-23 08:08:48.344458
893	 - 300SEL	44	2023-02-23 08:08:48.364906	2023-02-23 08:08:48.364906
894	 - 350SD	44	2023-02-23 08:08:48.386916	2023-02-23 08:08:48.386916
895	 - 350SDL	44	2023-02-23 08:08:48.407114	2023-02-23 08:08:48.407114
896	 - 380SE	44	2023-02-23 08:08:48.426522	2023-02-23 08:08:48.426522
897	 - 380SEC	44	2023-02-23 08:08:48.445461	2023-02-23 08:08:48.445461
898	 - 380SEL	44	2023-02-23 08:08:48.466355	2023-02-23 08:08:48.466355
1124	18i	56	2023-02-23 08:09:06.390823	2023-02-23 08:09:06.390823
899	 - 400SE	44	2023-02-23 08:08:48.484371	2023-02-23 08:08:48.484371
900	 - 400SEL	44	2023-02-23 08:08:48.503118	2023-02-23 08:08:48.503118
901	 - 420SEL	44	2023-02-23 08:08:48.523196	2023-02-23 08:08:48.523196
902	 - 500SEC	44	2023-02-23 08:08:48.542584	2023-02-23 08:08:48.542584
903	 - 500SEL	44	2023-02-23 08:08:48.561135	2023-02-23 08:08:48.561135
904	 - 560SEC	44	2023-02-23 08:08:48.580986	2023-02-23 08:08:48.580986
905	 - 560SEL	44	2023-02-23 08:08:48.59972	2023-02-23 08:08:48.59972
906	 - 600SEC	44	2023-02-23 08:08:48.619247	2023-02-23 08:08:48.619247
907	 - 600SEL	44	2023-02-23 08:08:48.63829	2023-02-23 08:08:48.63829
908	 - S320	44	2023-02-23 08:08:48.6575	2023-02-23 08:08:48.6575
909	 - S350	44	2023-02-23 08:08:48.67654	2023-02-23 08:08:48.67654
910	 - S350 Bluetec	44	2023-02-23 08:08:48.696135	2023-02-23 08:08:48.696135
911	 - S400 Hybrid	44	2023-02-23 08:08:48.716699	2023-02-23 08:08:48.716699
912	 - S420	44	2023-02-23 08:08:48.735938	2023-02-23 08:08:48.735938
913	 - S430	44	2023-02-23 08:08:48.754081	2023-02-23 08:08:48.754081
914	 - S500	44	2023-02-23 08:08:48.774867	2023-02-23 08:08:48.774867
915	 - S550	44	2023-02-23 08:08:48.794115	2023-02-23 08:08:48.794115
916	 - S55 AMG	44	2023-02-23 08:08:48.813582	2023-02-23 08:08:48.813582
917	 - S600	44	2023-02-23 08:08:48.833663	2023-02-23 08:08:48.833663
918	 - S63 AMG	44	2023-02-23 08:08:48.853074	2023-02-23 08:08:48.853074
919	 - S65 AMG	44	2023-02-23 08:08:48.873001	2023-02-23 08:08:48.873001
920	SL Class (13)	44	2023-02-23 08:08:48.891657	2023-02-23 08:08:48.891657
921	 - 300SL	44	2023-02-23 08:08:48.91213	2023-02-23 08:08:48.91213
922	 - 380SL	44	2023-02-23 08:08:48.932209	2023-02-23 08:08:48.932209
923	 - 380SLC	44	2023-02-23 08:08:48.95431	2023-02-23 08:08:48.95431
924	 - 500SL	44	2023-02-23 08:08:48.975429	2023-02-23 08:08:48.975429
925	 - 560SL	44	2023-02-23 08:08:48.994761	2023-02-23 08:08:48.994761
926	 - 600SL	44	2023-02-23 08:08:49.015645	2023-02-23 08:08:49.015645
927	 - SL320	44	2023-02-23 08:08:49.037123	2023-02-23 08:08:49.037123
928	 - SL500	44	2023-02-23 08:08:49.059285	2023-02-23 08:08:49.059285
929	 - SL550	44	2023-02-23 08:08:49.079623	2023-02-23 08:08:49.079623
930	 - SL55 AMG	44	2023-02-23 08:08:49.101758	2023-02-23 08:08:49.101758
931	 - SL600	44	2023-02-23 08:08:49.124536	2023-02-23 08:08:49.124536
932	 - SL63 AMG	44	2023-02-23 08:08:49.143249	2023-02-23 08:08:49.143249
933	 - SL65 AMG	44	2023-02-23 08:08:49.162605	2023-02-23 08:08:49.162605
934	SLK Class (8)	44	2023-02-23 08:08:49.185426	2023-02-23 08:08:49.185426
935	 - SLK230	44	2023-02-23 08:08:49.203887	2023-02-23 08:08:49.203887
936	 - SLK250	44	2023-02-23 08:08:49.222892	2023-02-23 08:08:49.222892
937	 - SLK280	44	2023-02-23 08:08:49.246341	2023-02-23 08:08:49.246341
938	 - SLK300	44	2023-02-23 08:08:49.268649	2023-02-23 08:08:49.268649
939	 - SLK320	44	2023-02-23 08:08:49.292659	2023-02-23 08:08:49.292659
940	 - SLK32 AMG	44	2023-02-23 08:08:49.314076	2023-02-23 08:08:49.314076
941	 - SLK350	44	2023-02-23 08:08:49.336198	2023-02-23 08:08:49.336198
942	 - SLK55 AMG	44	2023-02-23 08:08:49.355184	2023-02-23 08:08:49.355184
943	SLR Class (1)	44	2023-02-23 08:08:49.375118	2023-02-23 08:08:49.375118
944	 - SLR	44	2023-02-23 08:08:49.394002	2023-02-23 08:08:49.394002
945	SLS Class (1)	44	2023-02-23 08:08:49.415015	2023-02-23 08:08:49.415015
946	 - SLS AMG	44	2023-02-23 08:08:49.435386	2023-02-23 08:08:49.435386
947	Sprinter Class (1)	44	2023-02-23 08:08:49.457624	2023-02-23 08:08:49.457624
948	 - Sprinter	44	2023-02-23 08:08:49.478038	2023-02-23 08:08:49.478038
949	Other Mercedes-Benz Models	44	2023-02-23 08:08:49.503228	2023-02-23 08:08:49.503228
950	Capri	45	2023-02-23 08:08:49.526714	2023-02-23 08:08:49.526714
951	Cougar	45	2023-02-23 08:08:49.546872	2023-02-23 08:08:49.546872
952	Grand Marquis	45	2023-02-23 08:08:49.565108	2023-02-23 08:08:49.565108
953	Lynx	45	2023-02-23 08:08:49.587393	2023-02-23 08:08:49.587393
954	Marauder	45	2023-02-23 08:08:49.605478	2023-02-23 08:08:49.605478
955	Mariner	45	2023-02-23 08:08:49.623739	2023-02-23 08:08:49.623739
956	Marquis	45	2023-02-23 08:08:49.642684	2023-02-23 08:08:49.642684
957	Milan	45	2023-02-23 08:08:49.664032	2023-02-23 08:08:49.664032
958	Montego	45	2023-02-23 08:08:49.683822	2023-02-23 08:08:49.683822
959	Monterey	45	2023-02-23 08:08:49.704365	2023-02-23 08:08:49.704365
960	Mountaineer	45	2023-02-23 08:08:49.723867	2023-02-23 08:08:49.723867
961	Mystique	45	2023-02-23 08:08:49.743319	2023-02-23 08:08:49.743319
962	Sable	45	2023-02-23 08:08:49.763525	2023-02-23 08:08:49.763525
963	Topaz	45	2023-02-23 08:08:49.782376	2023-02-23 08:08:49.782376
964	Tracer	45	2023-02-23 08:08:49.800152	2023-02-23 08:08:49.800152
965	Villager	45	2023-02-23 08:08:49.818696	2023-02-23 08:08:49.818696
966	Zephyr	45	2023-02-23 08:08:49.838738	2023-02-23 08:08:49.838738
967	Other Mercury Models	45	2023-02-23 08:08:49.858397	2023-02-23 08:08:49.858397
968	Scorpio	46	2023-02-23 08:08:49.877727	2023-02-23 08:08:49.877727
969	XR4Ti	46	2023-02-23 08:08:49.902867	2023-02-23 08:08:49.902867
970	Other Merkur Models	46	2023-02-23 08:08:49.926524	2023-02-23 08:08:49.926524
971	Cooper Clubman Models (2)	47	2023-02-23 08:08:49.953453	2023-02-23 08:08:49.953453
972	 - Cooper Clubman	47	2023-02-23 08:08:49.975386	2023-02-23 08:08:49.975386
973	 - Cooper S Clubman	47	2023-02-23 08:08:49.997399	2023-02-23 08:08:49.997399
974	Cooper Countryman Models (2)	47	2023-02-23 08:08:50.019106	2023-02-23 08:08:50.019106
975	 - Cooper Countryman	47	2023-02-23 08:08:50.04143	2023-02-23 08:08:50.04143
976	 - Cooper S Countryman	47	2023-02-23 08:08:50.062559	2023-02-23 08:08:50.062559
977	Cooper Coupe Models (2)	47	2023-02-23 08:08:50.086282	2023-02-23 08:08:50.086282
978	 - Cooper Coupe	47	2023-02-23 08:08:50.573154	2023-02-23 08:08:50.573154
979	 - Cooper S Coupe	47	2023-02-23 08:08:50.579655	2023-02-23 08:08:50.579655
980	Cooper Models (2)	47	2023-02-23 08:08:56.020221	2023-02-23 08:08:56.020221
981	 - Cooper	47	2023-02-23 08:08:56.124561	2023-02-23 08:08:56.124561
982	 - Cooper S	47	2023-02-23 08:08:56.197513	2023-02-23 08:08:56.197513
983	Cooper Roadster Models (2)	47	2023-02-23 08:08:56.249694	2023-02-23 08:08:56.249694
984	 - Cooper Roadster	47	2023-02-23 08:08:56.281265	2023-02-23 08:08:56.281265
985	 - Cooper S Roadster	47	2023-02-23 08:08:56.303311	2023-02-23 08:08:56.303311
986	3000GT	48	2023-02-23 08:08:56.325281	2023-02-23 08:08:56.325281
987	Cordia	48	2023-02-23 08:08:56.343419	2023-02-23 08:08:56.343419
988	Diamante	48	2023-02-23 08:08:56.362769	2023-02-23 08:08:56.362769
989	Eclipse	48	2023-02-23 08:08:56.385751	2023-02-23 08:08:56.385751
990	Endeavor	48	2023-02-23 08:08:56.403385	2023-02-23 08:08:56.403385
991	Expo	48	2023-02-23 08:08:56.420696	2023-02-23 08:08:56.420696
992	Galant	48	2023-02-23 08:08:56.440021	2023-02-23 08:08:56.440021
993	i	48	2023-02-23 08:08:56.458597	2023-02-23 08:08:56.458597
994	Lancer	48	2023-02-23 08:08:56.477807	2023-02-23 08:08:56.477807
995	Lancer Evolution	48	2023-02-23 08:08:56.496212	2023-02-23 08:08:56.496212
996	Mighty Max	48	2023-02-23 08:08:56.515621	2023-02-23 08:08:56.515621
997	Mirage	48	2023-02-23 08:08:56.534267	2023-02-23 08:08:56.534267
998	Montero	48	2023-02-23 08:08:56.553668	2023-02-23 08:08:56.553668
999	Montero Sport	48	2023-02-23 08:08:56.574177	2023-02-23 08:08:56.574177
1000	Outlander	48	2023-02-23 08:08:56.593506	2023-02-23 08:08:56.593506
1001	Outlander Sport	48	2023-02-23 08:08:56.614642	2023-02-23 08:08:56.614642
1002	Precis	48	2023-02-23 08:08:56.633175	2023-02-23 08:08:56.633175
1003	Raider	48	2023-02-23 08:08:56.652074	2023-02-23 08:08:56.652074
1004	Sigma	48	2023-02-23 08:08:56.670884	2023-02-23 08:08:56.670884
1005	Starion	48	2023-02-23 08:08:56.688476	2023-02-23 08:08:56.688476
1006	Tredia	48	2023-02-23 08:08:56.707758	2023-02-23 08:08:56.707758
1007	Van	48	2023-02-23 08:08:56.726928	2023-02-23 08:08:56.726928
1008	Other Mitsubishi Models	48	2023-02-23 08:08:56.747232	2023-02-23 08:08:56.747232
1009	200SX	49	2023-02-23 08:08:56.768384	2023-02-23 08:08:56.768384
1010	240SX	49	2023-02-23 08:08:56.78801	2023-02-23 08:08:56.78801
1011	300ZX	49	2023-02-23 08:08:56.809044	2023-02-23 08:08:56.809044
1012	350Z	49	2023-02-23 08:08:56.830133	2023-02-23 08:08:56.830133
1013	370Z	49	2023-02-23 08:08:56.852134	2023-02-23 08:08:56.852134
1014	Altima	49	2023-02-23 08:08:56.875195	2023-02-23 08:08:56.875195
1015	Armada	49	2023-02-23 08:08:56.89612	2023-02-23 08:08:56.89612
1016	Axxess	49	2023-02-23 08:08:56.919048	2023-02-23 08:08:56.919048
1017	Cube	49	2023-02-23 08:08:56.937133	2023-02-23 08:08:56.937133
1018	Frontier	49	2023-02-23 08:08:56.954913	2023-02-23 08:08:56.954913
1019	GT-R	49	2023-02-23 08:08:56.975914	2023-02-23 08:08:56.975914
1020	Juke	49	2023-02-23 08:08:56.994106	2023-02-23 08:08:56.994106
1021	Leaf	49	2023-02-23 08:08:57.014764	2023-02-23 08:08:57.014764
1022	Maxima	49	2023-02-23 08:08:57.035202	2023-02-23 08:08:57.035202
1023	Murano	49	2023-02-23 08:08:57.055818	2023-02-23 08:08:57.055818
1024	Murano CrossCabriolet	49	2023-02-23 08:08:57.076209	2023-02-23 08:08:57.076209
1025	NV	49	2023-02-23 08:08:57.095619	2023-02-23 08:08:57.095619
1026	NX	49	2023-02-23 08:08:57.116147	2023-02-23 08:08:57.116147
1027	Pathfinder	49	2023-02-23 08:08:57.134482	2023-02-23 08:08:57.134482
1028	Pickup	49	2023-02-23 08:08:57.15343	2023-02-23 08:08:57.15343
1029	Pulsar	49	2023-02-23 08:08:57.171839	2023-02-23 08:08:57.171839
1030	Quest	49	2023-02-23 08:08:57.189727	2023-02-23 08:08:57.189727
1031	Rogue	49	2023-02-23 08:08:57.208028	2023-02-23 08:08:57.208028
1032	Sentra	49	2023-02-23 08:08:57.22734	2023-02-23 08:08:57.22734
1033	Stanza	49	2023-02-23 08:08:57.245663	2023-02-23 08:08:57.245663
1034	Titan	49	2023-02-23 08:08:57.263647	2023-02-23 08:08:57.263647
1035	Van	49	2023-02-23 08:08:57.28161	2023-02-23 08:08:57.28161
1036	Versa	49	2023-02-23 08:08:57.302165	2023-02-23 08:08:57.302165
1037	Xterra	49	2023-02-23 08:08:57.324877	2023-02-23 08:08:57.324877
1038	Other Nissan Models	49	2023-02-23 08:08:57.344357	2023-02-23 08:08:57.344357
1039	88	50	2023-02-23 08:08:57.368233	2023-02-23 08:08:57.368233
1040	Achieva	50	2023-02-23 08:08:57.385866	2023-02-23 08:08:57.385866
1041	Alero	50	2023-02-23 08:08:57.403933	2023-02-23 08:08:57.403933
1042	Aurora	50	2023-02-23 08:08:57.423395	2023-02-23 08:08:57.423395
1043	Bravada	50	2023-02-23 08:08:57.442715	2023-02-23 08:08:57.442715
1044	Custom Cruiser	50	2023-02-23 08:08:57.464417	2023-02-23 08:08:57.464417
1045	Cutlass	50	2023-02-23 08:08:57.484523	2023-02-23 08:08:57.484523
1046	Cutlass Calais	50	2023-02-23 08:08:57.506802	2023-02-23 08:08:57.506802
1047	Cutlass Ciera	50	2023-02-23 08:08:57.527095	2023-02-23 08:08:57.527095
1048	Cutlass Supreme	50	2023-02-23 08:08:57.548284	2023-02-23 08:08:57.548284
1049	Firenza	50	2023-02-23 08:08:57.570203	2023-02-23 08:08:57.570203
1050	Intrigue	50	2023-02-23 08:08:57.590678	2023-02-23 08:08:57.590678
1051	Ninety-Eight	50	2023-02-23 08:08:57.609575	2023-02-23 08:08:57.609575
1052	Omega	50	2023-02-23 08:08:57.629182	2023-02-23 08:08:57.629182
1053	Regency	50	2023-02-23 08:08:57.647675	2023-02-23 08:08:57.647675
1054	Silhouette	50	2023-02-23 08:08:57.666157	2023-02-23 08:08:57.666157
1055	Toronado	50	2023-02-23 08:08:57.688435	2023-02-23 08:08:57.688435
1056	Other Oldsmobile Models	50	2023-02-23 08:08:57.710964	2023-02-23 08:08:57.710964
1057	405	51	2023-02-23 08:08:57.729184	2023-02-23 08:08:57.729184
1058	504	51	2023-02-23 08:08:57.751017	2023-02-23 08:08:57.751017
1059	505	51	2023-02-23 08:08:57.77416	2023-02-23 08:08:57.77416
1060	604	51	2023-02-23 08:08:57.795765	2023-02-23 08:08:57.795765
1061	Other Peugeot Models	51	2023-02-23 08:08:57.818112	2023-02-23 08:08:57.818112
1062	Acclaim	52	2023-02-23 08:08:57.835694	2023-02-23 08:08:57.835694
1063	Arrow	52	2023-02-23 08:08:57.853647	2023-02-23 08:08:57.853647
1064	Breeze	52	2023-02-23 08:08:57.871911	2023-02-23 08:08:57.871911
1065	Caravelle	52	2023-02-23 08:08:57.894014	2023-02-23 08:08:57.894014
1066	Champ	52	2023-02-23 08:08:57.91188	2023-02-23 08:08:57.91188
1067	Colt	52	2023-02-23 08:08:57.930644	2023-02-23 08:08:57.930644
1068	Conquest	52	2023-02-23 08:08:57.953709	2023-02-23 08:08:57.953709
1069	Gran Fury	52	2023-02-23 08:08:57.973925	2023-02-23 08:08:57.973925
1070	Grand Voyager	52	2023-02-23 08:08:57.994092	2023-02-23 08:08:57.994092
1071	Horizon	52	2023-02-23 08:08:58.01575	2023-02-23 08:08:58.01575
1072	Laser	52	2023-02-23 08:08:58.037173	2023-02-23 08:08:58.037173
1073	Neon	52	2023-02-23 08:08:58.054879	2023-02-23 08:08:58.054879
1074	Prowler	52	2023-02-23 08:08:58.07393	2023-02-23 08:08:58.07393
1075	Reliant	52	2023-02-23 08:08:58.09508	2023-02-23 08:08:58.09508
1076	Sapporo	52	2023-02-23 08:08:58.115404	2023-02-23 08:08:58.115404
1077	Scamp	52	2023-02-23 08:08:58.13364	2023-02-23 08:08:58.13364
1078	Sundance	52	2023-02-23 08:08:58.154516	2023-02-23 08:08:58.154516
1079	Trailduster	52	2023-02-23 08:08:58.176648	2023-02-23 08:08:58.176648
1080	Voyager	52	2023-02-23 08:08:58.197835	2023-02-23 08:08:58.197835
1081	Other Plymouth Models	52	2023-02-23 08:08:58.222054	2023-02-23 08:08:58.222054
1082	1000	53	2023-02-23 08:08:58.241119	2023-02-23 08:08:58.241119
1083	6000	53	2023-02-23 08:08:58.259036	2023-02-23 08:08:58.259036
1084	Aztek	53	2023-02-23 08:08:58.278473	2023-02-23 08:08:58.278473
1085	Bonneville	53	2023-02-23 08:08:58.299722	2023-02-23 08:08:58.299722
1086	Catalina	53	2023-02-23 08:08:58.317437	2023-02-23 08:08:58.317437
1087	Fiero	53	2023-02-23 08:08:58.336818	2023-02-23 08:08:58.336818
1088	Firebird	53	2023-02-23 08:08:58.35461	2023-02-23 08:08:58.35461
1089	G3	53	2023-02-23 08:08:58.374048	2023-02-23 08:08:58.374048
1090	G5	53	2023-02-23 08:08:58.392908	2023-02-23 08:08:58.392908
1091	G6	53	2023-02-23 08:08:58.973818	2023-02-23 08:08:58.973818
1092	G8	53	2023-02-23 08:08:58.980174	2023-02-23 08:08:58.980174
1093	Grand Am	53	2023-02-23 08:09:05.547982	2023-02-23 08:09:05.547982
1094	Grand Prix	53	2023-02-23 08:09:05.674934	2023-02-23 08:09:05.674934
1095	GTO	53	2023-02-23 08:09:05.751754	2023-02-23 08:09:05.751754
1096	J2000	53	2023-02-23 08:09:05.807253	2023-02-23 08:09:05.807253
1097	Le Mans	53	2023-02-23 08:09:05.842389	2023-02-23 08:09:05.842389
1098	Montana	53	2023-02-23 08:09:05.865712	2023-02-23 08:09:05.865712
1099	Parisienne	53	2023-02-23 08:09:05.885256	2023-02-23 08:09:05.885256
1100	Phoenix	53	2023-02-23 08:09:05.902586	2023-02-23 08:09:05.902586
1101	Safari	53	2023-02-23 08:09:05.922986	2023-02-23 08:09:05.922986
1102	Solstice	53	2023-02-23 08:09:05.944968	2023-02-23 08:09:05.944968
1103	Sunbird	53	2023-02-23 08:09:05.96772	2023-02-23 08:09:05.96772
1104	Sunfire	53	2023-02-23 08:09:05.988429	2023-02-23 08:09:05.988429
1105	Torrent	53	2023-02-23 08:09:06.009947	2023-02-23 08:09:06.009947
1106	Trans Sport	53	2023-02-23 08:09:06.030027	2023-02-23 08:09:06.030027
1107	Vibe	53	2023-02-23 08:09:06.053242	2023-02-23 08:09:06.053242
1108	Other Pontiac Models	53	2023-02-23 08:09:06.074401	2023-02-23 08:09:06.074401
1109	911	54	2023-02-23 08:09:06.09666	2023-02-23 08:09:06.09666
1110	924	54	2023-02-23 08:09:06.115386	2023-02-23 08:09:06.115386
1111	928	54	2023-02-23 08:09:06.136648	2023-02-23 08:09:06.136648
1112	944	54	2023-02-23 08:09:06.158035	2023-02-23 08:09:06.158035
1113	968	54	2023-02-23 08:09:06.178218	2023-02-23 08:09:06.178218
1114	Boxster	54	2023-02-23 08:09:06.197974	2023-02-23 08:09:06.197974
1115	Carrera GT	54	2023-02-23 08:09:06.219805	2023-02-23 08:09:06.219805
1116	Cayenne	54	2023-02-23 08:09:06.237503	2023-02-23 08:09:06.237503
1117	Cayman	54	2023-02-23 08:09:06.255341	2023-02-23 08:09:06.255341
1118	Panamera	54	2023-02-23 08:09:06.27664	2023-02-23 08:09:06.27664
1119	Other Porsche Models	54	2023-02-23 08:09:06.297018	2023-02-23 08:09:06.297018
1120	1500	55	2023-02-23 08:09:06.316225	2023-02-23 08:09:06.316225
1121	2500	55	2023-02-23 08:09:06.336281	2023-02-23 08:09:06.336281
1122	3500	55	2023-02-23 08:09:06.354768	2023-02-23 08:09:06.354768
1125	Fuego	56	2023-02-23 08:09:06.409195	2023-02-23 08:09:06.409195
1126	Le Car	56	2023-02-23 08:09:06.429322	2023-02-23 08:09:06.429322
1127	R18	56	2023-02-23 08:09:06.448142	2023-02-23 08:09:06.448142
1128	Sportwagon	56	2023-02-23 08:09:06.469355	2023-02-23 08:09:06.469355
1129	Other Renault Models	56	2023-02-23 08:09:06.488857	2023-02-23 08:09:06.488857
1130	Camargue	57	2023-02-23 08:09:06.507633	2023-02-23 08:09:06.507633
1131	Corniche	57	2023-02-23 08:09:06.527385	2023-02-23 08:09:06.527385
1132	Ghost	57	2023-02-23 08:09:06.54526	2023-02-23 08:09:06.54526
1133	Park Ward	57	2023-02-23 08:09:06.563826	2023-02-23 08:09:06.563826
1134	Phantom	57	2023-02-23 08:09:06.586962	2023-02-23 08:09:06.586962
1135	Silver Dawn	57	2023-02-23 08:09:06.609433	2023-02-23 08:09:06.609433
1136	Silver Seraph	57	2023-02-23 08:09:06.631778	2023-02-23 08:09:06.631778
1137	Silver Spirit	57	2023-02-23 08:09:06.652206	2023-02-23 08:09:06.652206
1138	Silver Spur	57	2023-02-23 08:09:06.67319	2023-02-23 08:09:06.67319
1139	Other Rolls-Royce Models	57	2023-02-23 08:09:06.691912	2023-02-23 08:09:06.691912
1140	9-2X	58	2023-02-23 08:09:06.711203	2023-02-23 08:09:06.711203
1141	9-3	58	2023-02-23 08:09:06.72932	2023-02-23 08:09:06.72932
1142	9-4X	58	2023-02-23 08:09:06.748277	2023-02-23 08:09:06.748277
1143	9-5	58	2023-02-23 08:09:06.770036	2023-02-23 08:09:06.770036
1144	9-7X	58	2023-02-23 08:09:06.788793	2023-02-23 08:09:06.788793
1145	900	58	2023-02-23 08:09:06.806383	2023-02-23 08:09:06.806383
1146	9000	58	2023-02-23 08:09:06.827565	2023-02-23 08:09:06.827565
1147	Other Saab Models	58	2023-02-23 08:09:06.848412	2023-02-23 08:09:06.848412
1148	Astra	59	2023-02-23 08:09:06.867331	2023-02-23 08:09:06.867331
1149	Aura	59	2023-02-23 08:09:06.887671	2023-02-23 08:09:06.887671
1150	ION	59	2023-02-23 08:09:06.906332	2023-02-23 08:09:06.906332
1151	L Series (3)	59	2023-02-23 08:09:06.925332	2023-02-23 08:09:06.925332
1152	 - L100	59	2023-02-23 08:09:06.945437	2023-02-23 08:09:06.945437
1153	 - L200	59	2023-02-23 08:09:06.96761	2023-02-23 08:09:06.96761
1154	 - L300	59	2023-02-23 08:09:06.988321	2023-02-23 08:09:06.988321
1155	LS	59	2023-02-23 08:09:07.00954	2023-02-23 08:09:07.00954
1156	LW Series (4)	59	2023-02-23 08:09:07.028904	2023-02-23 08:09:07.028904
1157	 - LW1	59	2023-02-23 08:09:07.047972	2023-02-23 08:09:07.047972
1158	 - LW2	59	2023-02-23 08:09:07.068927	2023-02-23 08:09:07.068927
1159	 - LW200	59	2023-02-23 08:09:07.090817	2023-02-23 08:09:07.090817
1160	 - LW300	59	2023-02-23 08:09:07.110927	2023-02-23 08:09:07.110927
1161	Outlook	59	2023-02-23 08:09:07.129178	2023-02-23 08:09:07.129178
1162	Relay	59	2023-02-23 08:09:07.149507	2023-02-23 08:09:07.149507
1163	SC Series (2)	59	2023-02-23 08:09:07.168912	2023-02-23 08:09:07.168912
1164	 - SC1	59	2023-02-23 08:09:07.1887	2023-02-23 08:09:07.1887
1165	 - SC2	59	2023-02-23 08:09:07.207914	2023-02-23 08:09:07.207914
1166	Sky	59	2023-02-23 08:09:07.228418	2023-02-23 08:09:07.228418
1167	SL Series (3)	59	2023-02-23 08:09:07.249846	2023-02-23 08:09:07.249846
1168	 - SL	59	2023-02-23 08:09:07.270177	2023-02-23 08:09:07.270177
1169	 - SL1	59	2023-02-23 08:09:07.291264	2023-02-23 08:09:07.291264
1170	 - SL2	59	2023-02-23 08:09:07.315783	2023-02-23 08:09:07.315783
1171	SW Series (2)	59	2023-02-23 08:09:07.335969	2023-02-23 08:09:07.335969
1172	 - SW1	59	2023-02-23 08:09:07.354275	2023-02-23 08:09:07.354275
1173	 - SW2	59	2023-02-23 08:09:07.373021	2023-02-23 08:09:07.373021
1174	Vue	59	2023-02-23 08:09:07.394131	2023-02-23 08:09:07.394131
1175	Other Saturn Models	59	2023-02-23 08:09:07.413941	2023-02-23 08:09:07.413941
1176	FR-S	60	2023-02-23 08:09:07.43217	2023-02-23 08:09:07.43217
1177	iQ	60	2023-02-23 08:09:07.454808	2023-02-23 08:09:07.454808
1178	tC	60	2023-02-23 08:09:07.472291	2023-02-23 08:09:07.472291
1179	xA	60	2023-02-23 08:09:07.490628	2023-02-23 08:09:07.490628
1180	xB	60	2023-02-23 08:09:07.510689	2023-02-23 08:09:07.510689
1181	xD	60	2023-02-23 08:09:07.528483	2023-02-23 08:09:07.528483
1182	fortwo	61	2023-02-23 08:09:07.550134	2023-02-23 08:09:07.550134
1183	Other smart Models	61	2023-02-23 08:09:07.569585	2023-02-23 08:09:07.569585
1184	Viper	62	2023-02-23 08:09:07.588102	2023-02-23 08:09:07.588102
1185	825	63	2023-02-23 08:09:07.605954	2023-02-23 08:09:07.605954
1186	827	63	2023-02-23 08:09:07.626899	2023-02-23 08:09:07.626899
1187	Other Sterling Models	63	2023-02-23 08:09:07.647264	2023-02-23 08:09:07.647264
1188	Baja	64	2023-02-23 08:09:07.666528	2023-02-23 08:09:07.666528
1189	Brat	64	2023-02-23 08:09:07.685876	2023-02-23 08:09:07.685876
1190	BRZ	64	2023-02-23 08:09:07.706026	2023-02-23 08:09:07.706026
1191	Forester	64	2023-02-23 08:09:07.724407	2023-02-23 08:09:07.724407
1192	Impreza	64	2023-02-23 08:09:07.744026	2023-02-23 08:09:07.744026
1193	Impreza WRX	64	2023-02-23 08:09:07.761846	2023-02-23 08:09:07.761846
1194	Justy	64	2023-02-23 08:09:07.779312	2023-02-23 08:09:07.779312
1195	L Series	64	2023-02-23 08:09:07.799273	2023-02-23 08:09:07.799273
1196	Legacy	64	2023-02-23 08:09:07.818353	2023-02-23 08:09:07.818353
1197	Loyale	64	2023-02-23 08:09:07.837263	2023-02-23 08:09:07.837263
1198	Outback	64	2023-02-23 08:09:07.856178	2023-02-23 08:09:07.856178
1199	SVX	64	2023-02-23 08:09:07.877514	2023-02-23 08:09:07.877514
1200	Tribeca	64	2023-02-23 08:09:07.895917	2023-02-23 08:09:07.895917
1201	XT	64	2023-02-23 08:09:07.914839	2023-02-23 08:09:07.914839
1202	XV Crosstrek	64	2023-02-23 08:09:07.935749	2023-02-23 08:09:07.935749
1203	Other Subaru Models	64	2023-02-23 08:09:07.954572	2023-02-23 08:09:07.954572
1204	Aerio	65	2023-02-23 08:09:07.975815	2023-02-23 08:09:07.975815
1205	Equator	65	2023-02-23 08:09:07.995598	2023-02-23 08:09:07.995598
1206	Esteem	65	2023-02-23 08:09:08.014336	2023-02-23 08:09:08.014336
1207	Forenza	65	2023-02-23 08:09:08.034471	2023-02-23 08:09:08.034471
1208	Grand Vitara	65	2023-02-23 08:09:08.055437	2023-02-23 08:09:08.055437
1209	Kizashi	65	2023-02-23 08:09:08.076778	2023-02-23 08:09:08.076778
1210	Reno	65	2023-02-23 08:09:08.094899	2023-02-23 08:09:08.094899
1211	Samurai	65	2023-02-23 08:09:08.114952	2023-02-23 08:09:08.114952
1212	Sidekick	65	2023-02-23 08:09:08.135721	2023-02-23 08:09:08.135721
1213	Swift	65	2023-02-23 08:09:08.154805	2023-02-23 08:09:08.154805
1214	SX4	65	2023-02-23 08:09:08.175086	2023-02-23 08:09:08.175086
1215	Verona	65	2023-02-23 08:09:08.194797	2023-02-23 08:09:08.194797
1216	Vitara	65	2023-02-23 08:09:08.783415	2023-02-23 08:09:08.783415
1217	X-90	65	2023-02-23 08:09:08.789052	2023-02-23 08:09:08.789052
1218	XL7	65	2023-02-23 08:09:14.784055	2023-02-23 08:09:14.784055
1219	Other Suzuki Models	65	2023-02-23 08:09:14.878568	2023-02-23 08:09:14.878568
1220	Roadster	66	2023-02-23 08:09:14.931998	2023-02-23 08:09:14.931998
1221	4Runner	67	2023-02-23 08:09:14.966088	2023-02-23 08:09:14.966088
1222	Avalon	67	2023-02-23 08:09:14.992796	2023-02-23 08:09:14.992796
1223	Camry	67	2023-02-23 08:09:15.012605	2023-02-23 08:09:15.012605
1224	Celica	67	2023-02-23 08:09:15.030317	2023-02-23 08:09:15.030317
1225	Corolla	67	2023-02-23 08:09:15.052836	2023-02-23 08:09:15.052836
1226	Corona	67	2023-02-23 08:09:15.075585	2023-02-23 08:09:15.075585
1227	Cressida	67	2023-02-23 08:09:15.096011	2023-02-23 08:09:15.096011
1228	Echo	67	2023-02-23 08:09:15.115132	2023-02-23 08:09:15.115132
1229	FJ Cruiser	67	2023-02-23 08:09:15.134703	2023-02-23 08:09:15.134703
1230	Highlander	67	2023-02-23 08:09:15.154241	2023-02-23 08:09:15.154241
1231	Land Cruiser	67	2023-02-23 08:09:15.174732	2023-02-23 08:09:15.174732
1232	Matrix	67	2023-02-23 08:09:15.19332	2023-02-23 08:09:15.19332
1233	MR2	67	2023-02-23 08:09:15.213898	2023-02-23 08:09:15.213898
1234	MR2 Spyder	67	2023-02-23 08:09:15.235526	2023-02-23 08:09:15.235526
1235	Paseo	67	2023-02-23 08:09:15.256652	2023-02-23 08:09:15.256652
1236	Pickup	67	2023-02-23 08:09:15.274959	2023-02-23 08:09:15.274959
1237	Previa	67	2023-02-23 08:09:15.297448	2023-02-23 08:09:15.297448
1238	Prius	67	2023-02-23 08:09:15.316473	2023-02-23 08:09:15.316473
1239	Prius C	67	2023-02-23 08:09:15.334046	2023-02-23 08:09:15.334046
1240	Prius V	67	2023-02-23 08:09:15.354349	2023-02-23 08:09:15.354349
1241	RAV4	67	2023-02-23 08:09:15.372864	2023-02-23 08:09:15.372864
1242	Sequoia	67	2023-02-23 08:09:15.392345	2023-02-23 08:09:15.392345
1243	Sienna	67	2023-02-23 08:09:15.412081	2023-02-23 08:09:15.412081
1244	Solara	67	2023-02-23 08:09:15.43021	2023-02-23 08:09:15.43021
1245	Starlet	67	2023-02-23 08:09:15.449474	2023-02-23 08:09:15.449474
1246	Supra	67	2023-02-23 08:09:15.471558	2023-02-23 08:09:15.471558
1247	T100	67	2023-02-23 08:09:15.491414	2023-02-23 08:09:15.491414
1248	Tacoma	67	2023-02-23 08:09:15.510684	2023-02-23 08:09:15.510684
1249	Tercel	67	2023-02-23 08:09:15.530176	2023-02-23 08:09:15.530176
1250	Tundra	67	2023-02-23 08:09:15.548236	2023-02-23 08:09:15.548236
1251	Van	67	2023-02-23 08:09:15.566019	2023-02-23 08:09:15.566019
1252	Venza	67	2023-02-23 08:09:15.583503	2023-02-23 08:09:15.583503
1253	Yaris	67	2023-02-23 08:09:15.604836	2023-02-23 08:09:15.604836
1254	Other Toyota Models	67	2023-02-23 08:09:15.623842	2023-02-23 08:09:15.623842
1255	TR7	68	2023-02-23 08:09:15.642984	2023-02-23 08:09:15.642984
1256	TR8	68	2023-02-23 08:09:15.665993	2023-02-23 08:09:15.665993
1257	Other Triumph Models	68	2023-02-23 08:09:15.68764	2023-02-23 08:09:15.68764
1258	Beetle	69	2023-02-23 08:09:15.708724	2023-02-23 08:09:15.708724
1259	Cabrio	69	2023-02-23 08:09:15.730771	2023-02-23 08:09:15.730771
1260	Cabriolet	69	2023-02-23 08:09:15.748877	2023-02-23 08:09:15.748877
1261	CC	69	2023-02-23 08:09:15.767265	2023-02-23 08:09:15.767265
1262	Corrado	69	2023-02-23 08:09:15.785099	2023-02-23 08:09:15.785099
1263	Dasher	69	2023-02-23 08:09:15.803	2023-02-23 08:09:15.803
1264	Eos	69	2023-02-23 08:09:15.822315	2023-02-23 08:09:15.822315
1265	Eurovan	69	2023-02-23 08:09:15.8404	2023-02-23 08:09:15.8404
1266	Fox	69	2023-02-23 08:09:15.857901	2023-02-23 08:09:15.857901
1267	GLI	69	2023-02-23 08:09:15.878057	2023-02-23 08:09:15.878057
1268	Golf R	69	2023-02-23 08:09:15.897234	2023-02-23 08:09:15.897234
1269	GTI	69	2023-02-23 08:09:15.917606	2023-02-23 08:09:15.917606
1270	Golf and Rabbit Models (2)	69	2023-02-23 08:09:15.938315	2023-02-23 08:09:15.938315
1271	 - Golf	69	2023-02-23 08:09:15.957094	2023-02-23 08:09:15.957094
1272	 - Rabbit	69	2023-02-23 08:09:15.975083	2023-02-23 08:09:15.975083
1273	Jetta	69	2023-02-23 08:09:15.994714	2023-02-23 08:09:15.994714
1274	Passat	69	2023-02-23 08:09:16.013767	2023-02-23 08:09:16.013767
1275	Phaeton	69	2023-02-23 08:09:16.031608	2023-02-23 08:09:16.031608
1276	Pickup	69	2023-02-23 08:09:16.05115	2023-02-23 08:09:16.05115
1277	Quantum	69	2023-02-23 08:09:16.069919	2023-02-23 08:09:16.069919
1278	R32	69	2023-02-23 08:09:16.088147	2023-02-23 08:09:16.088147
1279	Routan	69	2023-02-23 08:09:16.10712	2023-02-23 08:09:16.10712
1280	Scirocco	69	2023-02-23 08:09:16.125454	2023-02-23 08:09:16.125454
1281	Tiguan	69	2023-02-23 08:09:16.145182	2023-02-23 08:09:16.145182
1282	Touareg	69	2023-02-23 08:09:16.164411	2023-02-23 08:09:16.164411
1283	Vanagon	69	2023-02-23 08:09:16.183917	2023-02-23 08:09:16.183917
1284	Other Volkswagen Models	69	2023-02-23 08:09:16.203785	2023-02-23 08:09:16.203785
1285	240	70	2023-02-23 08:09:16.222508	2023-02-23 08:09:16.222508
1286	260	70	2023-02-23 08:09:16.240741	2023-02-23 08:09:16.240741
1287	740	70	2023-02-23 08:09:16.258729	2023-02-23 08:09:16.258729
1288	760	70	2023-02-23 08:09:16.278564	2023-02-23 08:09:16.278564
1289	780	70	2023-02-23 08:09:16.296765	2023-02-23 08:09:16.296765
1290	850	70	2023-02-23 08:09:16.317654	2023-02-23 08:09:16.317654
1291	940	70	2023-02-23 08:09:16.34014	2023-02-23 08:09:16.34014
1292	960	70	2023-02-23 08:09:16.36138	2023-02-23 08:09:16.36138
1293	C30	70	2023-02-23 08:09:16.379917	2023-02-23 08:09:16.379917
1294	C70	70	2023-02-23 08:09:16.401389	2023-02-23 08:09:16.401389
1295	S40	70	2023-02-23 08:09:16.420811	2023-02-23 08:09:16.420811
1296	S60	70	2023-02-23 08:09:16.43877	2023-02-23 08:09:16.43877
1297	S70	70	2023-02-23 08:09:16.457697	2023-02-23 08:09:16.457697
1298	S80	70	2023-02-23 08:09:16.476482	2023-02-23 08:09:16.476482
1299	S90	70	2023-02-23 08:09:16.494707	2023-02-23 08:09:16.494707
1300	V40	70	2023-02-23 08:09:16.514325	2023-02-23 08:09:16.514325
1301	V50	70	2023-02-23 08:09:16.533116	2023-02-23 08:09:16.533116
1302	V70	70	2023-02-23 08:09:16.554139	2023-02-23 08:09:16.554139
1303	V90	70	2023-02-23 08:09:16.574448	2023-02-23 08:09:16.574448
1304	XC60	70	2023-02-23 08:09:16.593534	2023-02-23 08:09:16.593534
1305	XC70	70	2023-02-23 08:09:16.614179	2023-02-23 08:09:16.614179
1306	XC90	70	2023-02-23 08:09:16.635373	2023-02-23 08:09:16.635373
1307	Other Volvo Models	70	2023-02-23 08:09:16.655035	2023-02-23 08:09:16.655035
1308	GV	71	2023-02-23 08:09:16.67201	2023-02-23 08:09:16.67201
1309	GVC	71	2023-02-23 08:09:16.690381	2023-02-23 08:09:16.690381
1310	GVL	71	2023-02-23 08:09:16.70783	2023-02-23 08:09:16.70783
1311	GVS	71	2023-02-23 08:09:16.725612	2023-02-23 08:09:16.725612
1312	GVX	71	2023-02-23 08:09:17.517304	2023-02-23 08:09:17.517304
1313	Other Yugo Models	71	2023-02-23 08:09:17.523179	2023-02-23 08:09:17.523179
\.


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.cities (id, name, country_id, created_at, updated_at, postcode) FROM stdin;
1	Adlešiči	1	2023-02-23 07:52:09.464074	2023-02-23 07:52:09.464074	8341
2	Ajdovščina	1	2023-02-23 07:52:09.549089	2023-02-23 07:52:09.549089	5270
3	Ankaran/Ancarano	1	2023-02-23 07:52:09.609149	2023-02-23 07:52:09.609149	6280
4	Apače	1	2023-02-23 07:52:09.650951	2023-02-23 07:52:09.650951	9253
5	Artiče	1	2023-02-23 07:52:09.686025	2023-02-23 07:52:09.686025	8253
6	Begunje na Gorenjskem	1	2023-02-23 07:52:09.710238	2023-02-23 07:52:09.710238	4275
7	Begunje pri Cerknici	1	2023-02-23 07:52:09.734124	2023-02-23 07:52:09.734124	1382
8	Beltinci	1	2023-02-23 07:52:09.757257	2023-02-23 07:52:09.757257	9231
9	Benedikt	1	2023-02-23 07:52:09.780464	2023-02-23 07:52:09.780464	2234
10	Bistrica ob Dravi	1	2023-02-23 07:52:09.805253	2023-02-23 07:52:09.805253	2345
11	Bistrica ob Sotli	1	2023-02-23 07:52:09.827704	2023-02-23 07:52:09.827704	3256
12	Bizeljsko	1	2023-02-23 07:52:09.851921	2023-02-23 07:52:09.851921	8259
13	Blagovica	1	2023-02-23 07:52:09.879364	2023-02-23 07:52:09.879364	1223
14	Blanca	1	2023-02-23 07:52:09.905364	2023-02-23 07:52:09.905364	8283
15	Bled	1	2023-02-23 07:52:09.92874	2023-02-23 07:52:09.92874	4260
16	Blejska Dobrava	1	2023-02-23 07:52:09.951863	2023-02-23 07:52:09.951863	4273
17	Bodonci	1	2023-02-23 07:52:09.974147	2023-02-23 07:52:09.974147	9265
18	Bogojina	1	2023-02-23 07:52:09.997498	2023-02-23 07:52:09.997498	9222
19	Bohinjska Bela	1	2023-02-23 07:52:10.023048	2023-02-23 07:52:10.023048	4263
20	Bohinjska Bistrica	1	2023-02-23 07:52:10.052305	2023-02-23 07:52:10.052305	4264
21	Bohinjsko jezero	1	2023-02-23 07:52:10.079772	2023-02-23 07:52:10.079772	4265
22	Borovnica	1	2023-02-23 07:52:10.105897	2023-02-23 07:52:10.105897	1353
23	Boštanj	1	2023-02-23 07:52:10.128908	2023-02-23 07:52:10.128908	8294
24	Bovec	1	2023-02-23 07:52:10.152531	2023-02-23 07:52:10.152531	5230
25	Branik	1	2023-02-23 07:52:10.175236	2023-02-23 07:52:10.175236	5295
26	Braslovče	1	2023-02-23 07:52:10.198036	2023-02-23 07:52:10.198036	3314
27	Breginj	1	2023-02-23 07:52:10.22153	2023-02-23 07:52:10.22153	5223
28	Brestanica	1	2023-02-23 07:52:10.245626	2023-02-23 07:52:10.245626	8280
29	Bresternica	1	2023-02-23 07:52:10.266821	2023-02-23 07:52:10.266821	2354
30	Brezje	1	2023-02-23 07:52:10.292111	2023-02-23 07:52:10.292111	4243
31	Brezovica pri Ljubljani	1	2023-02-23 07:52:10.31989	2023-02-23 07:52:10.31989	1351
32	Brežice	1	2023-02-23 07:52:10.346066	2023-02-23 07:52:10.346066	8250
33	Brnik - aerodrom	1	2023-02-23 07:52:10.372399	2023-02-23 07:52:10.372399	4210
34	Brusnice	1	2023-02-23 07:52:10.39429	2023-02-23 07:52:10.39429	8321
35	Buče	1	2023-02-23 07:52:10.417293	2023-02-23 07:52:10.417293	3255
36	Bučka	1	2023-02-23 07:52:10.43914	2023-02-23 07:52:10.43914	8276
37	Cankova	1	2023-02-23 07:52:10.460741	2023-02-23 07:52:10.460741	9261
38	Celje	1	2023-02-23 07:52:10.488629	2023-02-23 07:52:10.488629	3000
39	Celje - poštni predali	1	2023-02-23 07:52:10.51451	2023-02-23 07:52:10.51451	3001
40	Cerklje na Gorenjskem	1	2023-02-23 07:52:10.542408	2023-02-23 07:52:10.542408	4207
41	Cerklje ob Krki	1	2023-02-23 07:52:10.56525	2023-02-23 07:52:10.56525	8263
42	Cerknica	1	2023-02-23 07:52:10.587106	2023-02-23 07:52:10.587106	1380
43	Cerkno	1	2023-02-23 07:52:10.611063	2023-02-23 07:52:10.611063	5282
44	Cerkvenjak	1	2023-02-23 07:52:10.633817	2023-02-23 07:52:10.633817	2236
45	Ceršak	1	2023-02-23 07:52:10.656465	2023-02-23 07:52:10.656465	2215
46	Cirkovce	1	2023-02-23 07:52:10.680883	2023-02-23 07:52:10.680883	2326
47	Cirkulane	1	2023-02-23 07:52:10.703551	2023-02-23 07:52:10.703551	2282
48	Col	1	2023-02-23 07:52:10.729119	2023-02-23 07:52:10.729119	5273
49	Čatež ob Savi	1	2023-02-23 07:52:10.755707	2023-02-23 07:52:10.755707	8251
50	Čemšenik	1	2023-02-23 07:52:10.7789	2023-02-23 07:52:10.7789	1413
51	Čepovan	1	2023-02-23 07:52:10.803168	2023-02-23 07:52:10.803168	5253
52	Črenšovci	1	2023-02-23 07:52:10.827682	2023-02-23 07:52:10.827682	9232
53	Črna na Koroškem	1	2023-02-23 07:52:10.854256	2023-02-23 07:52:10.854256	2393
54	Črni Kal	1	2023-02-23 07:52:10.879655	2023-02-23 07:52:10.879655	6275
55	Črni Vrh nad Idrijo	1	2023-02-23 07:52:10.904155	2023-02-23 07:52:10.904155	5274
56	Črniče	1	2023-02-23 07:52:10.926802	2023-02-23 07:52:10.926802	5262
57	Črnomelj	1	2023-02-23 07:52:10.953004	2023-02-23 07:52:10.953004	8340
58	Dekani	1	2023-02-23 07:52:10.977129	2023-02-23 07:52:10.977129	6271
59	Deskle	1	2023-02-23 07:52:11.003916	2023-02-23 07:52:11.003916	5210
60	Destrnik	1	2023-02-23 07:52:11.029067	2023-02-23 07:52:11.029067	2253
61	Divača	1	2023-02-23 07:52:11.051094	2023-02-23 07:52:11.051094	6215
62	Dob	1	2023-02-23 07:52:11.075034	2023-02-23 07:52:11.075034	1233
63	Dobje pri Planini	1	2023-02-23 07:52:11.097184	2023-02-23 07:52:11.097184	3224
64	Dobova	1	2023-02-23 07:52:11.119497	2023-02-23 07:52:11.119497	8257
65	Dobovec	1	2023-02-23 07:52:11.145938	2023-02-23 07:52:11.145938	1423
66	Dobravlje	1	2023-02-23 07:52:11.171795	2023-02-23 07:52:11.171795	5263
67	Dobrna	1	2023-02-23 07:52:11.196033	2023-02-23 07:52:11.196033	3204
68	Dobrnič	1	2023-02-23 07:52:11.220853	2023-02-23 07:52:11.220853	8211
69	Dobrova	1	2023-02-23 07:52:11.244083	2023-02-23 07:52:11.244083	1356
70	Dobrovnik/Dobronak	1	2023-02-23 07:52:11.267907	2023-02-23 07:52:11.267907	9223
71	Dobrovo v Brdih	1	2023-02-23 07:52:11.292328	2023-02-23 07:52:11.292328	5212
72	Dol pri Hrastniku	1	2023-02-23 07:52:11.315943	2023-02-23 07:52:11.315943	1431
73	Dol pri Ljubljani	1	2023-02-23 07:52:11.340628	2023-02-23 07:52:11.340628	1262
74	Dole pri Litiji	1	2023-02-23 07:52:11.37061	2023-02-23 07:52:11.37061	1273
75	Dolenja vas	1	2023-02-23 07:52:12.893775	2023-02-23 07:52:12.893775	1331
76	Dolenjske Toplice	1	2023-02-23 07:52:12.900093	2023-02-23 07:52:12.900093	8350
77	Domžale	1	2023-02-23 07:52:39.127351	2023-02-23 07:52:39.127351	1230
78	Dornava	1	2023-02-23 07:52:39.178208	2023-02-23 07:52:39.178208	2252
79	Dornberk	1	2023-02-23 07:52:39.204928	2023-02-23 07:52:39.204928	5294
80	Draga	1	2023-02-23 07:52:39.225917	2023-02-23 07:52:39.225917	1319
81	Dragatuš	1	2023-02-23 07:52:39.25063	2023-02-23 07:52:39.25063	8343
82	Dramlje	1	2023-02-23 07:52:39.272973	2023-02-23 07:52:39.272973	3222
83	Dravograd	1	2023-02-23 07:52:39.29641	2023-02-23 07:52:39.29641	2370
84	Duplje	1	2023-02-23 07:52:39.319499	2023-02-23 07:52:39.319499	4203
85	Dutovlje	1	2023-02-23 07:52:39.342189	2023-02-23 07:52:39.342189	6221
86	Dvor	1	2023-02-23 07:52:39.362397	2023-02-23 07:52:39.362397	8361
87	Fala	1	2023-02-23 07:52:39.384652	2023-02-23 07:52:39.384652	2343
88	Fokovci	1	2023-02-23 07:52:39.406205	2023-02-23 07:52:39.406205	9208
89	Fram	1	2023-02-23 07:52:39.428405	2023-02-23 07:52:39.428405	2313
90	Frankolovo	1	2023-02-23 07:52:39.451037	2023-02-23 07:52:39.451037	3213
91	Gabrovka	1	2023-02-23 07:52:39.474018	2023-02-23 07:52:39.474018	1274
92	Globoko	1	2023-02-23 07:52:39.500239	2023-02-23 07:52:39.500239	8254
93	Godovič	1	2023-02-23 07:52:39.522445	2023-02-23 07:52:39.522445	5275
94	Golnik	1	2023-02-23 07:52:39.546002	2023-02-23 07:52:39.546002	4204
95	Gomilsko	1	2023-02-23 07:52:39.570081	2023-02-23 07:52:39.570081	3303
96	Gorenja vas	1	2023-02-23 07:52:39.592605	2023-02-23 07:52:39.592605	4224
97	Gorica pri Slivnici	1	2023-02-23 07:52:39.615546	2023-02-23 07:52:39.615546	3263
98	Gorišnica	1	2023-02-23 07:52:39.639605	2023-02-23 07:52:39.639605	2272
99	Gornja Radgona	1	2023-02-23 07:52:39.66206	2023-02-23 07:52:39.66206	9250
100	Gornji Grad	1	2023-02-23 07:52:39.685807	2023-02-23 07:52:39.685807	3342
101	Gozd Martuljek	1	2023-02-23 07:52:39.711237	2023-02-23 07:52:39.711237	4282
102	Gračišče	1	2023-02-23 07:52:39.733371	2023-02-23 07:52:39.733371	6272
103	Grad	1	2023-02-23 07:52:39.756726	2023-02-23 07:52:39.756726	9264
104	Gradac	1	2023-02-23 07:52:39.77927	2023-02-23 07:52:39.77927	8332
105	Grahovo	1	2023-02-23 07:52:39.801573	2023-02-23 07:52:39.801573	1384
106	Grahovo ob Bači	1	2023-02-23 07:52:39.826676	2023-02-23 07:52:39.826676	5242
107	Grgar	1	2023-02-23 07:52:39.848898	2023-02-23 07:52:39.848898	5251
108	Griže	1	2023-02-23 07:52:39.871519	2023-02-23 07:52:39.871519	3302
109	Grobelno	1	2023-02-23 07:52:39.893416	2023-02-23 07:52:39.893416	3231
110	Grosuplje	1	2023-02-23 07:52:39.916237	2023-02-23 07:52:39.916237	1290
111	Hajdina	1	2023-02-23 07:52:39.940519	2023-02-23 07:52:39.940519	2288
112	Hinje	1	2023-02-23 07:52:39.965541	2023-02-23 07:52:39.965541	8362
113	Hoče	1	2023-02-23 07:52:39.990198	2023-02-23 07:52:39.990198	2311
114	Hodoš/Hodos	1	2023-02-23 07:52:40.014716	2023-02-23 07:52:40.014716	9205
115	Horjul	1	2023-02-23 07:52:40.037901	2023-02-23 07:52:40.037901	1354
116	Hotedršica	1	2023-02-23 07:52:40.061333	2023-02-23 07:52:40.061333	1372
117	Hrastnik	1	2023-02-23 07:52:40.085072	2023-02-23 07:52:40.085072	1430
118	Hruševje	1	2023-02-23 07:52:40.10724	2023-02-23 07:52:40.10724	6225
119	Hrušica	1	2023-02-23 07:52:40.132453	2023-02-23 07:52:40.132453	4276
120	Idrija	1	2023-02-23 07:52:40.156337	2023-02-23 07:52:40.156337	5280
121	Ig	1	2023-02-23 07:52:40.180876	2023-02-23 07:52:40.180876	1292
122	Ilirska Bistrica	1	2023-02-23 07:52:40.209756	2023-02-23 07:52:40.209756	6250
123	Ilirska Bistrica - Trnovo	1	2023-02-23 07:52:40.234393	2023-02-23 07:52:40.234393	6251
124	Ivančna Gorica	1	2023-02-23 07:52:40.259472	2023-02-23 07:52:40.259472	1295
125	Ivanjkovci	1	2023-02-23 07:52:40.281158	2023-02-23 07:52:40.281158	2259
126	Izlake	1	2023-02-23 07:52:40.302758	2023-02-23 07:52:40.302758	1411
127	Izola/Isola	1	2023-02-23 07:52:40.326507	2023-02-23 07:52:40.326507	6310
128	Jakobski Dol	1	2023-02-23 07:52:40.35103	2023-02-23 07:52:40.35103	2222
129	Jarenina	1	2023-02-23 07:52:40.375277	2023-02-23 07:52:40.375277	2221
130	Jelšane	1	2023-02-23 07:52:40.401681	2023-02-23 07:52:40.401681	6254
131	Jesenice	1	2023-02-23 07:52:40.43038	2023-02-23 07:52:40.43038	4270
132	Jesenice na Dolenjskem	1	2023-02-23 07:52:47.619736	2023-02-23 07:52:47.619736	8261
133	Jurklošter	1	2023-02-23 07:52:47.627575	2023-02-23 07:52:47.627575	3273
134	Jurovski Dol	1	2023-02-23 07:52:48.980233	2023-02-23 07:52:48.980233	2223
135	Juršinci	1	2023-02-23 07:52:49.040217	2023-02-23 07:52:49.040217	2256
136	Kal nad Kanalom	1	2023-02-23 07:52:49.068078	2023-02-23 07:52:49.068078	5214
137	Kalobje	1	2023-02-23 07:52:49.090977	2023-02-23 07:52:49.090977	3233
138	Kamna Gorica	1	2023-02-23 07:52:49.112421	2023-02-23 07:52:49.112421	4246
139	Kamnica	1	2023-02-23 07:52:49.134467	2023-02-23 07:52:49.134467	2351
140	Kamnik	1	2023-02-23 07:52:49.161548	2023-02-23 07:52:49.161548	1241
141	Kanal	1	2023-02-23 07:52:49.183686	2023-02-23 07:52:49.183686	5213
142	Kapele	1	2023-02-23 07:52:49.205404	2023-02-23 07:52:49.205404	8258
143	Kapla	1	2023-02-23 07:52:49.229138	2023-02-23 07:52:49.229138	2362
144	Kidričevo	1	2023-02-23 07:52:49.249909	2023-02-23 07:52:49.249909	2325
145	Kisovec	1	2023-02-23 07:52:49.273949	2023-02-23 07:52:49.273949	1412
146	Knežak	1	2023-02-23 07:52:49.296705	2023-02-23 07:52:49.296705	6253
147	Kobarid	1	2023-02-23 07:52:49.31911	2023-02-23 07:52:49.31911	5222
148	Kobilje	1	2023-02-23 07:52:49.342174	2023-02-23 07:52:49.342174	9227
149	Kočevje	1	2023-02-23 07:52:49.364749	2023-02-23 07:52:49.364749	1330
150	Kočevska Reka	1	2023-02-23 07:52:49.386459	2023-02-23 07:52:49.386459	1338
151	Kog	1	2023-02-23 07:52:49.409076	2023-02-23 07:52:49.409076	2276
152	Kojsko	1	2023-02-23 07:52:49.432663	2023-02-23 07:52:49.432663	5211
153	Komen	1	2023-02-23 07:52:49.453797	2023-02-23 07:52:49.453797	6223
154	Komenda	1	2023-02-23 07:52:49.477964	2023-02-23 07:52:49.477964	1218
155	Koper - Capodistria	1	2023-02-23 07:52:49.506473	2023-02-23 07:52:49.506473	6000
156	Koper - Capodistria - poštni predali	1	2023-02-23 07:52:49.532128	2023-02-23 07:52:49.532128	6001
157	Koprivnica	1	2023-02-23 07:52:49.55528	2023-02-23 07:52:49.55528	8282
158	Kostanjevica na Krasu	1	2023-02-23 07:52:49.579978	2023-02-23 07:52:49.579978	5296
159	Kostanjevica na Krki	1	2023-02-23 07:52:49.604064	2023-02-23 07:52:49.604064	8311
160	Kostel	1	2023-02-23 07:52:49.624468	2023-02-23 07:52:49.624468	1336
161	Košana	1	2023-02-23 07:52:49.647679	2023-02-23 07:52:49.647679	6256
162	Kotlje	1	2023-02-23 07:52:49.673524	2023-02-23 07:52:49.673524	2394
163	Kozina	1	2023-02-23 07:52:49.695672	2023-02-23 07:52:49.695672	6240
164	Kozje	1	2023-02-23 07:52:49.718474	2023-02-23 07:52:49.718474	3260
165	Kranj	1	2023-02-23 07:52:49.741988	2023-02-23 07:52:49.741988	4000
166	Kranj - poštni predali	1	2023-02-23 07:52:49.766746	2023-02-23 07:52:49.766746	4001
167	Kranjska Gora	1	2023-02-23 07:52:49.788599	2023-02-23 07:52:49.788599	4280
168	Kresnice	1	2023-02-23 07:52:49.809721	2023-02-23 07:52:49.809721	1281
169	Križe	1	2023-02-23 07:52:49.833285	2023-02-23 07:52:49.833285	4294
170	Križevci	1	2023-02-23 07:52:49.858786	2023-02-23 07:52:49.858786	9206
171	Križevci pri Ljutomeru	1	2023-02-23 07:52:49.883127	2023-02-23 07:52:49.883127	9242
172	Krka	1	2023-02-23 07:52:49.905411	2023-02-23 07:52:49.905411	1301
173	Krmelj	1	2023-02-23 07:52:49.927288	2023-02-23 07:52:49.927288	8296
174	Kropa	1	2023-02-23 07:52:49.950121	2023-02-23 07:52:49.950121	4245
175	Krška vas	1	2023-02-23 07:52:49.97237	2023-02-23 07:52:49.97237	8262
176	Krško	1	2023-02-23 07:52:49.995978	2023-02-23 07:52:49.995978	8270
177	Kuzma	1	2023-02-23 07:52:50.019317	2023-02-23 07:52:50.019317	9263
178	Laporje	1	2023-02-23 07:52:50.041262	2023-02-23 07:52:50.041262	2318
179	Laško	1	2023-02-23 07:52:50.065368	2023-02-23 07:52:50.065368	3270
180	Laze v Tuhinju	1	2023-02-23 07:52:50.090358	2023-02-23 07:52:50.090358	1219
181	Lenart v Slovenskih goricah	1	2023-02-23 07:52:50.113944	2023-02-23 07:52:50.113944	2230
182	Lendava/Lendva	1	2023-02-23 07:52:52.981071	2023-02-23 07:52:52.981071	9220
183	Lesce	1	2023-02-23 07:52:52.987397	2023-02-23 07:52:52.987397	4248
184	Lesično	1	2023-02-23 07:52:59.638517	2023-02-23 07:52:59.638517	3261
185	Leskovec pri Krškem	1	2023-02-23 07:52:59.733349	2023-02-23 07:52:59.733349	8273
186	Libeliče	1	2023-02-23 07:52:59.786855	2023-02-23 07:52:59.786855	2372
187	Limbuš	1	2023-02-23 07:52:59.824528	2023-02-23 07:52:59.824528	2341
188	Litija	1	2023-02-23 07:52:59.849874	2023-02-23 07:52:59.849874	1270
189	Ljubečna	1	2023-02-23 07:52:59.879042	2023-02-23 07:52:59.879042	3202
190	Ljubljana	1	2023-02-23 07:52:59.904512	2023-02-23 07:52:59.904512	1000
191	Ljubljana - poštni predali	1	2023-02-23 07:52:59.931717	2023-02-23 07:52:59.931717	1001
192	Ljubljana - Črnuče	1	2023-02-23 07:52:59.956058	2023-02-23 07:52:59.956058	1231
193	Ljubljana - Dobrunje	1	2023-02-23 07:52:59.980127	2023-02-23 07:52:59.980127	1261
194	Ljubljana - Polje	1	2023-02-23 07:53:00.006275	2023-02-23 07:53:00.006275	1260
195	Ljubljana - poštni center	1	2023-02-23 07:53:00.037478	2023-02-23 07:53:00.037478	1002
196	Ljubljana - Šentvid	1	2023-02-23 07:53:00.064102	2023-02-23 07:53:00.064102	1210
197	Ljubljana - Šmartno	1	2023-02-23 07:53:00.091352	2023-02-23 07:53:00.091352	1211
198	Ljubno ob Savinji	1	2023-02-23 07:53:00.115684	2023-02-23 07:53:00.115684	3333
199	Ljutomer	1	2023-02-23 07:53:00.138382	2023-02-23 07:53:00.138382	9240
200	Loče	1	2023-02-23 07:53:00.162561	2023-02-23 07:53:00.162561	3215
201	Log pod Mangartom	1	2023-02-23 07:53:00.186058	2023-02-23 07:53:00.186058	5231
202	Log pri Brezovici	1	2023-02-23 07:53:00.207814	2023-02-23 07:53:00.207814	1358
203	Logatec	1	2023-02-23 07:53:00.231683	2023-02-23 07:53:00.231683	1370
204	Loka pri Zidanem Mostu	1	2023-02-23 07:53:00.256301	2023-02-23 07:53:00.256301	1434
205	Loka pri Žusmu	1	2023-02-23 07:53:00.279515	2023-02-23 07:53:00.279515	3223
206	Lokev	1	2023-02-23 07:53:00.303838	2023-02-23 07:53:00.303838	6219
207	Loški Potok	1	2023-02-23 07:53:00.330212	2023-02-23 07:53:00.330212	1318
208	Lovrenc na Dravskem polju	1	2023-02-23 07:53:00.356989	2023-02-23 07:53:00.356989	2324
209	Lovrenc na Pohorju	1	2023-02-23 07:53:00.386134	2023-02-23 07:53:00.386134	2344
210	Luče	1	2023-02-23 07:53:00.413646	2023-02-23 07:53:00.413646	3334
211	Lukovica	1	2023-02-23 07:53:00.435935	2023-02-23 07:53:00.435935	1225
212	Mačkovci	1	2023-02-23 07:53:00.458982	2023-02-23 07:53:00.458982	9202
213	Majšperk	1	2023-02-23 07:53:00.482459	2023-02-23 07:53:00.482459	2322
214	Makole	1	2023-02-23 07:53:00.504823	2023-02-23 07:53:00.504823	2321
215	Mala Nedelja	1	2023-02-23 07:53:00.529546	2023-02-23 07:53:00.529546	9243
216	Malečnik	1	2023-02-23 07:53:00.556111	2023-02-23 07:53:00.556111	2229
217	Marezige	1	2023-02-23 07:53:00.579808	2023-02-23 07:53:00.579808	6273
218	Maribor	1	2023-02-23 07:53:00.608507	2023-02-23 07:53:00.608507	2000
219	Maribor - poštni predali	1	2023-02-23 07:53:00.63617	2023-02-23 07:53:00.63617	2001
220	Marjeta na Dravskem polju	1	2023-02-23 07:53:00.660378	2023-02-23 07:53:00.660378	2206
221	Markovci	1	2023-02-23 07:53:00.683428	2023-02-23 07:53:00.683428	2281
222	Martjanci	1	2023-02-23 07:53:00.705955	2023-02-23 07:53:00.705955	9221
223	Materija	1	2023-02-23 07:53:00.730132	2023-02-23 07:53:00.730132	6242
224	Mavčiče	1	2023-02-23 07:53:00.753395	2023-02-23 07:53:00.753395	4211
225	Medvode	1	2023-02-23 07:53:00.777147	2023-02-23 07:53:00.777147	1215
226	Mengeš	1	2023-02-23 07:53:00.800308	2023-02-23 07:53:00.800308	1234
227	Metlika	1	2023-02-23 07:53:00.82407	2023-02-23 07:53:00.82407	8330
228	Mežica	1	2023-02-23 07:53:00.84929	2023-02-23 07:53:00.84929	2392
229	Miklavž na Dravskem polju	1	2023-02-23 07:53:00.87544	2023-02-23 07:53:00.87544	2204
230	Miklavž pri Ormožu	1	2023-02-23 07:53:00.89992	2023-02-23 07:53:00.89992	2275
231	Miren	1	2023-02-23 07:53:00.922209	2023-02-23 07:53:00.922209	5291
232	Mirna	1	2023-02-23 07:53:00.944745	2023-02-23 07:53:00.944745	8233
233	Mirna Peč	1	2023-02-23 07:53:00.969003	2023-02-23 07:53:00.969003	8216
234	Mislinja	1	2023-02-23 07:53:00.990594	2023-02-23 07:53:00.990594	2382
235	Mojstrana	1	2023-02-23 07:53:01.014225	2023-02-23 07:53:01.014225	4281
236	Mokronog	1	2023-02-23 07:53:01.038505	2023-02-23 07:53:01.038505	8230
237	Moravče	1	2023-02-23 07:53:01.063522	2023-02-23 07:53:01.063522	1251
238	Moravske Toplice	1	2023-02-23 07:53:01.089013	2023-02-23 07:53:01.089013	9226
239	Most na Soči	1	2023-02-23 07:53:01.110789	2023-02-23 07:53:01.110789	5216
240	Motnik	1	2023-02-23 07:53:01.132402	2023-02-23 07:53:01.132402	1221
241	Mozirje	1	2023-02-23 07:53:01.156108	2023-02-23 07:53:01.156108	3330
242	Murska Sobota	1	2023-02-23 07:53:01.180058	2023-02-23 07:53:01.180058	9000
243	Murska Sobota - poštni predali	1	2023-02-23 07:53:01.206972	2023-02-23 07:53:01.206972	9001
244	Muta	1	2023-02-23 07:53:01.229199	2023-02-23 07:53:01.229199	2366
245	Naklo	1	2023-02-23 07:53:01.254272	2023-02-23 07:53:01.254272	4202
246	Nazarje	1	2023-02-23 07:53:01.281332	2023-02-23 07:53:01.281332	3331
247	Notranje Gorice	1	2023-02-23 07:53:01.30346	2023-02-23 07:53:01.30346	1357
248	Nova Cerkev	1	2023-02-23 07:53:01.327483	2023-02-23 07:53:01.327483	3203
249	Nova Gorica	1	2023-02-23 07:53:01.351738	2023-02-23 07:53:01.351738	5000
250	Nova Gorica - poštni predali	1	2023-02-23 07:53:01.378411	2023-02-23 07:53:01.378411	5001
251	Nova vas	1	2023-02-23 07:53:02.029457	2023-02-23 07:53:02.029457	1385
252	Novo mesto	1	2023-02-23 07:53:02.038131	2023-02-23 07:53:02.038131	8000
253	Novo mesto - poštni predali	1	2023-02-23 07:53:08.694121	2023-02-23 07:53:08.694121	8001
254	Obrov	1	2023-02-23 07:53:08.747959	2023-02-23 07:53:08.747959	6243
255	Odranci	1	2023-02-23 07:53:08.779142	2023-02-23 07:53:08.779142	9233
256	Oplotnica	1	2023-02-23 07:53:08.802106	2023-02-23 07:53:08.802106	2317
257	Orehova vas	1	2023-02-23 07:53:08.827501	2023-02-23 07:53:08.827501	2312
258	Ormož	1	2023-02-23 07:53:08.850306	2023-02-23 07:53:08.850306	2270
259	Ortnek	1	2023-02-23 07:53:08.872325	2023-02-23 07:53:08.872325	1316
260	Osilnica	1	2023-02-23 07:53:08.898827	2023-02-23 07:53:08.898827	1337
261	Otočec	1	2023-02-23 07:53:08.922943	2023-02-23 07:53:08.922943	8222
262	Ožbalt	1	2023-02-23 07:53:08.944192	2023-02-23 07:53:08.944192	2361
263	Pernica	1	2023-02-23 07:53:08.968702	2023-02-23 07:53:08.968702	2231
264	Pesnica pri Mariboru	1	2023-02-23 07:53:08.991141	2023-02-23 07:53:08.991141	2211
265	Petrovci	1	2023-02-23 07:53:09.015428	2023-02-23 07:53:09.015428	9203
266	Petrovče	1	2023-02-23 07:53:09.042442	2023-02-23 07:53:09.042442	3301
267	Piran/Pirano	1	2023-02-23 07:53:09.065217	2023-02-23 07:53:09.065217	6330
268	Pišece	1	2023-02-23 07:53:09.088389	2023-02-23 07:53:09.088389	8255
269	Pivka	1	2023-02-23 07:53:09.109658	2023-02-23 07:53:09.109658	6257
270	Planina	1	2023-02-23 07:53:09.134747	2023-02-23 07:53:09.134747	6232
271	Planina pri Sevnici	1	2023-02-23 07:53:09.158837	2023-02-23 07:53:09.158837	3225
272	Pobegi	1	2023-02-23 07:53:09.179456	2023-02-23 07:53:09.179456	6276
273	Podbočje	1	2023-02-23 07:53:09.204225	2023-02-23 07:53:09.204225	8312
274	Podbrdo	1	2023-02-23 07:53:09.226667	2023-02-23 07:53:09.226667	5243
275	Podčetrtek	1	2023-02-23 07:53:09.251511	2023-02-23 07:53:09.251511	3254
276	Podgorci	1	2023-02-23 07:53:09.273902	2023-02-23 07:53:09.273902	2273
277	Podgorje	1	2023-02-23 07:53:09.298439	2023-02-23 07:53:09.298439	6216
278	Podgorje pri Slovenj Gradcu	1	2023-02-23 07:53:09.327521	2023-02-23 07:53:09.327521	2381
279	Podgrad	1	2023-02-23 07:53:09.352316	2023-02-23 07:53:09.352316	6244
280	Podkum	1	2023-02-23 07:53:09.38197	2023-02-23 07:53:09.38197	1414
281	Podlehnik	1	2023-02-23 07:53:09.405067	2023-02-23 07:53:09.405067	2286
282	Podnanos	1	2023-02-23 07:53:09.429315	2023-02-23 07:53:09.429315	5272
283	Podnart	1	2023-02-23 07:53:09.452296	2023-02-23 07:53:09.452296	4244
284	Podplat	1	2023-02-23 07:53:09.474803	2023-02-23 07:53:09.474803	3241
285	Podsreda	1	2023-02-23 07:53:09.499107	2023-02-23 07:53:09.499107	3257
286	Podvelka	1	2023-02-23 07:53:09.521986	2023-02-23 07:53:09.521986	2363
287	Pohorje	1	2023-02-23 07:53:09.546958	2023-02-23 07:53:09.546958	2208
288	Polenšak	1	2023-02-23 07:53:09.578431	2023-02-23 07:53:09.578431	2257
289	Polhov Gradec	1	2023-02-23 07:53:09.606071	2023-02-23 07:53:09.606071	1355
290	Poljane nad Škofjo Loko	1	2023-02-23 07:53:09.632169	2023-02-23 07:53:09.632169	4223
291	Poljčane	1	2023-02-23 07:53:09.654045	2023-02-23 07:53:09.654045	2319
292	Polšnik	1	2023-02-23 07:53:09.678097	2023-02-23 07:53:09.678097	1272
293	Polzela	1	2023-02-23 07:53:09.701271	2023-02-23 07:53:09.701271	3313
294	Ponikva	1	2023-02-23 07:53:09.724543	2023-02-23 07:53:09.724543	3232
295	Portorož/Portorose	1	2023-02-23 07:53:09.749395	2023-02-23 07:53:09.749395	6320
296	Postojna	1	2023-02-23 07:53:09.772703	2023-02-23 07:53:09.772703	6230
297	Pragersko	1	2023-02-23 07:53:09.795284	2023-02-23 07:53:09.795284	2331
298	Prebold	1	2023-02-23 07:53:09.816169	2023-02-23 07:53:09.816169	3312
299	Preddvor	1	2023-02-23 07:53:09.838135	2023-02-23 07:53:09.838135	4205
300	Prem	1	2023-02-23 07:53:09.860992	2023-02-23 07:53:09.860992	6255
301	Preserje	1	2023-02-23 07:53:09.882557	2023-02-23 07:53:09.882557	1352
302	Prestranek	1	2023-02-23 07:53:09.906797	2023-02-23 07:53:09.906797	6258
303	Prevalje	1	2023-02-23 07:53:09.929032	2023-02-23 07:53:09.929032	2391
304	Prevorje	1	2023-02-23 07:53:09.950984	2023-02-23 07:53:09.950984	3262
305	Primskovo	1	2023-02-23 07:53:09.979615	2023-02-23 07:53:09.979615	1276
306	Pristava pri Mestinju	1	2023-02-23 07:53:10.005471	2023-02-23 07:53:10.005471	3253
307	Prosenjakovci/Partosfalva	1	2023-02-23 07:53:10.033625	2023-02-23 07:53:10.033625	9207
308	Prvačina	1	2023-02-23 07:53:10.054607	2023-02-23 07:53:10.054607	5297
309	Ptuj	1	2023-02-23 07:53:10.077535	2023-02-23 07:53:10.077535	2250
310	Ptujska Gora	1	2023-02-23 07:53:10.099395	2023-02-23 07:53:10.099395	2323
311	Puconci	1	2023-02-23 07:53:10.121664	2023-02-23 07:53:10.121664	9201
312	Rače	1	2023-02-23 07:53:10.145353	2023-02-23 07:53:10.145353	2327
313	Radeče	1	2023-02-23 07:53:10.982117	2023-02-23 07:53:10.982117	1433
314	Radenci	1	2023-02-23 07:53:10.989207	2023-02-23 07:53:10.989207	9252
315	Radlje ob Dravi	1	2023-02-23 07:53:18.535348	2023-02-23 07:53:18.535348	2360
316	Radomlje	1	2023-02-23 07:53:18.601351	2023-02-23 07:53:18.601351	1235
317	Radovljica	1	2023-02-23 07:53:18.645351	2023-02-23 07:53:18.645351	4240
318	Raka	1	2023-02-23 07:53:18.673037	2023-02-23 07:53:18.673037	8274
319	Rakek	1	2023-02-23 07:53:18.696493	2023-02-23 07:53:18.696493	1381
320	Rateče - Planica	1	2023-02-23 07:53:18.720009	2023-02-23 07:53:18.720009	4283
321	Ravne na Koroškem	1	2023-02-23 07:53:18.751437	2023-02-23 07:53:18.751437	2390
322	Razkrižje	1	2023-02-23 07:53:18.77652	2023-02-23 07:53:18.77652	9246
323	Rečica ob Savinji	1	2023-02-23 07:53:18.801514	2023-02-23 07:53:18.801514	3332
324	Renče	1	2023-02-23 07:53:18.823836	2023-02-23 07:53:18.823836	5292
325	Ribnica	1	2023-02-23 07:53:18.845934	2023-02-23 07:53:18.845934	1310
326	Ribnica na Pohorju	1	2023-02-23 07:53:18.870024	2023-02-23 07:53:18.870024	2364
327	Rimske Toplice	1	2023-02-23 07:53:18.892772	2023-02-23 07:53:18.892772	3272
328	Rob	1	2023-02-23 07:53:18.91625	2023-02-23 07:53:18.91625	1314
329	Ročinj	1	2023-02-23 07:53:18.940232	2023-02-23 07:53:18.940232	5215
330	Rogaška Slatina	1	2023-02-23 07:53:18.963755	2023-02-23 07:53:18.963755	3250
331	Rogašovci	1	2023-02-23 07:53:18.988849	2023-02-23 07:53:18.988849	9262
332	Rogatec	1	2023-02-23 07:53:19.012303	2023-02-23 07:53:19.012303	3252
333	Rovte	1	2023-02-23 07:53:19.038451	2023-02-23 07:53:19.038451	1373
334	Ruše	1	2023-02-23 07:53:19.061819	2023-02-23 07:53:19.061819	2342
335	Sava	1	2023-02-23 07:53:19.084023	2023-02-23 07:53:19.084023	1282
336	Sečovlje/Sicciole	1	2023-02-23 07:53:19.108312	2023-02-23 07:53:19.108312	6333
337	Selca	1	2023-02-23 07:53:19.130466	2023-02-23 07:53:19.130466	4227
338	Selnica ob Dravi	1	2023-02-23 07:53:19.154103	2023-02-23 07:53:19.154103	2352
339	Semič	1	2023-02-23 07:53:19.177293	2023-02-23 07:53:19.177293	8333
340	Senovo	1	2023-02-23 07:53:19.203154	2023-02-23 07:53:19.203154	8281
341	Senožeče	1	2023-02-23 07:53:19.226079	2023-02-23 07:53:19.226079	6224
342	Sevnica	1	2023-02-23 07:53:19.248247	2023-02-23 07:53:19.248247	8290
343	Sežana	1	2023-02-23 07:53:19.272179	2023-02-23 07:53:19.272179	6210
344	Sladki Vrh	1	2023-02-23 07:53:19.294998	2023-02-23 07:53:19.294998	2214
345	Slap ob Idrijci	1	2023-02-23 07:53:19.32007	2023-02-23 07:53:19.32007	5283
346	Slovenj Gradec	1	2023-02-23 07:53:19.343669	2023-02-23 07:53:19.343669	2380
347	Slovenska Bistrica	1	2023-02-23 07:53:19.367814	2023-02-23 07:53:19.367814	2310
348	Slovenske Konjice	1	2023-02-23 07:53:19.390812	2023-02-23 07:53:19.390812	3210
349	Smlednik	1	2023-02-23 07:53:19.413196	2023-02-23 07:53:19.413196	1216
350	Soča	1	2023-02-23 07:53:19.438186	2023-02-23 07:53:19.438186	5232
351	Sodražica	1	2023-02-23 07:53:19.461735	2023-02-23 07:53:19.461735	1317
352	Solčava	1	2023-02-23 07:53:19.485189	2023-02-23 07:53:19.485189	3335
353	Solkan	1	2023-02-23 07:53:19.50639	2023-02-23 07:53:19.50639	5250
354	Sorica	1	2023-02-23 07:53:19.527976	2023-02-23 07:53:19.527976	4229
355	Sovodenj	1	2023-02-23 07:53:19.55446	2023-02-23 07:53:19.55446	4225
356	Spodnja Idrija	1	2023-02-23 07:53:19.57639	2023-02-23 07:53:19.57639	5281
357	Spodnji Duplek	1	2023-02-23 07:53:19.600609	2023-02-23 07:53:19.600609	2241
358	Spodnji Ivanjci	1	2023-02-23 07:53:19.625097	2023-02-23 07:53:19.625097	9245
359	Središče ob Dravi	1	2023-02-23 07:53:19.652982	2023-02-23 07:53:19.652982	2277
360	Srednja vas v Bohinju	1	2023-02-23 07:53:19.677026	2023-02-23 07:53:19.677026	4267
361	Sromlje	1	2023-02-23 07:53:19.700014	2023-02-23 07:53:19.700014	8256
362	Srpenica	1	2023-02-23 07:53:19.724328	2023-02-23 07:53:19.724328	5224
363	Stahovica	1	2023-02-23 07:53:19.74679	2023-02-23 07:53:19.74679	1242
364	Stara Cerkev	1	2023-02-23 07:53:19.771514	2023-02-23 07:53:19.771514	1332
365	Stari trg ob Kolpi	1	2023-02-23 07:53:19.79629	2023-02-23 07:53:19.79629	8342
366	Stari trg pri Ložu	1	2023-02-23 07:53:19.820083	2023-02-23 07:53:19.820083	1386
367	Starše	1	2023-02-23 07:53:19.843291	2023-02-23 07:53:19.843291	2205
368	Stoperce	1	2023-02-23 07:53:19.868739	2023-02-23 07:53:19.868739	2289
369	Stopiče	1	2023-02-23 07:53:19.893297	2023-02-23 07:53:19.893297	8322
370	Stranice	1	2023-02-23 07:53:19.915641	2023-02-23 07:53:19.915641	3206
371	Straža	1	2023-02-23 07:53:19.939326	2023-02-23 07:53:19.939326	8351
372	Struge	1	2023-02-23 07:53:19.960794	2023-02-23 07:53:19.960794	1313
373	Studenec	1	2023-02-23 07:53:20.509384	2023-02-23 07:53:20.509384	8293
374	Suhor	1	2023-02-23 07:53:20.516778	2023-02-23 07:53:20.516778	8331
375	Sv. Duh na Ostrem Vrhu	1	2023-02-23 07:53:26.226496	2023-02-23 07:53:26.226496	2353
376	Sveta Ana v Slovenskih goricah	1	2023-02-23 07:53:26.299194	2023-02-23 07:53:26.299194	2233
377	Sveta Trojica v Slovenskih goricah	1	2023-02-23 07:53:26.344804	2023-02-23 07:53:26.344804	2235
378	Sveti Jurij ob Ščavnici	1	2023-02-23 07:53:26.379185	2023-02-23 07:53:26.379185	9244
379	Sveti Štefan	1	2023-02-23 07:53:26.403749	2023-02-23 07:53:26.403749	3264
380	Sveti Tomaž	1	2023-02-23 07:53:26.431092	2023-02-23 07:53:26.431092	2258
381	Šalovci	1	2023-02-23 07:53:26.45389	2023-02-23 07:53:26.45389	9204
382	Šempas	1	2023-02-23 07:53:26.47895	2023-02-23 07:53:26.47895	5261
383	Šempeter pri Gorici	1	2023-02-23 07:53:26.503562	2023-02-23 07:53:26.503562	5290
384	Šempeter v Savinjski dolini	1	2023-02-23 07:53:26.530121	2023-02-23 07:53:26.530121	3311
385	Šenčur	1	2023-02-23 07:53:26.555362	2023-02-23 07:53:26.555362	4208
386	Šentilj v Slovenskih goricah	1	2023-02-23 07:53:26.58513	2023-02-23 07:53:26.58513	2212
387	Šentjanž	1	2023-02-23 07:53:26.610666	2023-02-23 07:53:26.610666	8297
388	Šentjanž pri Dravogradu	1	2023-02-23 07:53:26.636128	2023-02-23 07:53:26.636128	2373
389	Šentjernej	1	2023-02-23 07:53:26.660136	2023-02-23 07:53:26.660136	8310
390	Šentjur	1	2023-02-23 07:53:26.687974	2023-02-23 07:53:26.687974	3230
391	Šentrupert	1	2023-02-23 07:53:26.711154	2023-02-23 07:53:26.711154	3271
392	Šentvid pri Stični	1	2023-02-23 07:53:26.759356	2023-02-23 07:53:26.759356	1296
393	Škocjan	1	2023-02-23 07:53:26.784783	2023-02-23 07:53:26.784783	8275
394	Škofije	1	2023-02-23 07:53:26.811731	2023-02-23 07:53:26.811731	6281
395	Škofja Loka	1	2023-02-23 07:53:26.836289	2023-02-23 07:53:26.836289	4220
396	Škofja vas	1	2023-02-23 07:53:26.863571	2023-02-23 07:53:26.863571	3211
397	Škofljica	1	2023-02-23 07:53:26.887279	2023-02-23 07:53:26.887279	1291
398	Šmarje	1	2023-02-23 07:53:26.911099	2023-02-23 07:53:26.911099	6274
399	Šmarje - Sap	1	2023-02-23 07:53:26.934972	2023-02-23 07:53:26.934972	1293
400	Šmarje pri Jelšah	1	2023-02-23 07:53:26.959847	2023-02-23 07:53:26.959847	3240
401	Šmarješke Toplice	1	2023-02-23 07:53:26.984753	2023-02-23 07:53:26.984753	8220
402	Šmartno na Pohorju	1	2023-02-23 07:53:27.008932	2023-02-23 07:53:27.008932	2315
403	Šmartno ob Dreti	1	2023-02-23 07:53:27.041749	2023-02-23 07:53:27.041749	3341
404	Šmartno ob Paki	1	2023-02-23 07:53:27.066284	2023-02-23 07:53:27.066284	3327
405	Šmartno pri Litiji	1	2023-02-23 07:53:27.091928	2023-02-23 07:53:27.091928	1275
406	Šmartno pri Slovenj Gradcu	1	2023-02-23 07:53:27.117288	2023-02-23 07:53:27.117288	2383
407	Šmartno v Rožni dolini	1	2023-02-23 07:53:27.143037	2023-02-23 07:53:27.143037	3201
408	Šoštanj	1	2023-02-23 07:53:27.165953	2023-02-23 07:53:27.165953	3325
409	Štanjel	1	2023-02-23 07:53:27.189965	2023-02-23 07:53:27.189965	6222
410	Štore	1	2023-02-23 07:53:27.214566	2023-02-23 07:53:27.214566	3220
411	Tabor	1	2023-02-23 07:53:27.237504	2023-02-23 07:53:27.237504	3304
412	Teharje	1	2023-02-23 07:53:27.261362	2023-02-23 07:53:27.261362	3221
413	Tišina	1	2023-02-23 07:53:27.284643	2023-02-23 07:53:27.284643	9251
414	Tolmin	1	2023-02-23 07:53:27.307777	2023-02-23 07:53:27.307777	5220
415	Topolšica	1	2023-02-23 07:53:27.329403	2023-02-23 07:53:27.329403	3326
416	Trbonje	1	2023-02-23 07:53:27.352724	2023-02-23 07:53:27.352724	2371
417	Trbovlje	1	2023-02-23 07:53:27.375109	2023-02-23 07:53:27.375109	1420
418	Trebelno	1	2023-02-23 07:53:27.398073	2023-02-23 07:53:27.398073	8231
419	Trebnje	1	2023-02-23 07:53:27.425567	2023-02-23 07:53:27.425567	8210
420	Trnovo pri Gorici	1	2023-02-23 07:53:27.450706	2023-02-23 07:53:27.450706	5252
421	Trnovska vas	1	2023-02-23 07:53:27.477029	2023-02-23 07:53:27.477029	2254
422	Trojane	1	2023-02-23 07:53:27.500685	2023-02-23 07:53:27.500685	1222
423	Trzin	1	2023-02-23 07:53:27.525997	2023-02-23 07:53:27.525997	1236
424	Tržič	1	2023-02-23 07:53:27.547758	2023-02-23 07:53:27.547758	4290
425	Tržišče	1	2023-02-23 07:53:27.571552	2023-02-23 07:53:27.571552	8295
426	Turjak	1	2023-02-23 07:53:27.594097	2023-02-23 07:53:27.594097	1311
427	Turnišče	1	2023-02-23 07:53:27.617269	2023-02-23 07:53:27.617269	9224
428	Uršna sela	1	2023-02-23 07:53:27.643475	2023-02-23 07:53:27.643475	8323
429	Vače	1	2023-02-23 07:53:28.33968	2023-02-23 07:53:28.33968	1252
430	Velenje	1	2023-02-23 07:53:28.346431	2023-02-23 07:53:28.346431	3320
431	Velika Loka	1	2023-02-23 07:53:56.74664	2023-02-23 07:53:56.74664	8212
432	Velika Nedelja	1	2023-02-23 07:53:56.777762	2023-02-23 07:53:56.777762	2274
433	Velika Polana	1	2023-02-23 07:53:56.802033	2023-02-23 07:53:56.802033	9225
434	Velike Lašče	1	2023-02-23 07:53:56.82451	2023-02-23 07:53:56.82451	1315
435	Veliki Gaber	1	2023-02-23 07:53:56.846225	2023-02-23 07:53:56.846225	8213
436	Veržej	1	2023-02-23 07:53:56.870485	2023-02-23 07:53:56.870485	9241
437	Videm - Dobrepolje	1	2023-02-23 07:53:56.894216	2023-02-23 07:53:56.894216	1312
438	Videm pri Ptuju	1	2023-02-23 07:53:56.917558	2023-02-23 07:53:56.917558	2284
439	Vinica	1	2023-02-23 07:53:56.939726	2023-02-23 07:53:56.939726	8344
440	Vipava	1	2023-02-23 07:53:56.961909	2023-02-23 07:53:56.961909	5271
441	Visoko	1	2023-02-23 07:53:56.98808	2023-02-23 07:53:56.98808	4212
442	Višnja Gora	1	2023-02-23 07:53:57.013026	2023-02-23 07:53:57.013026	1294
443	Vitanje	1	2023-02-23 07:53:57.04115	2023-02-23 07:53:57.04115	3205
444	Vitomarci	1	2023-02-23 07:53:57.06526	2023-02-23 07:53:57.06526	2255
445	Vodice	1	2023-02-23 07:53:57.086238	2023-02-23 07:53:57.086238	1217
446	Vojnik	1	2023-02-23 07:53:57.109513	2023-02-23 07:53:57.109513	3212
447	Volčja Draga	1	2023-02-23 07:53:57.13214	2023-02-23 07:53:57.13214	5293
448	Voličina	1	2023-02-23 07:53:57.154583	2023-02-23 07:53:57.154583	2232
449	Vransko	1	2023-02-23 07:53:57.18143	2023-02-23 07:53:57.18143	3305
450	Vremski Britof	1	2023-02-23 07:53:57.205961	2023-02-23 07:53:57.205961	6217
451	Vrhnika	1	2023-02-23 07:53:57.228273	2023-02-23 07:53:57.228273	1360
452	Vuhred	1	2023-02-23 07:53:57.253061	2023-02-23 07:53:57.253061	2365
453	Vuzenica	1	2023-02-23 07:53:57.276738	2023-02-23 07:53:57.276738	2367
454	Zabukovje	1	2023-02-23 07:53:57.300169	2023-02-23 07:53:57.300169	8292
455	Zagorje ob Savi	1	2023-02-23 07:53:57.32376	2023-02-23 07:53:57.32376	1410
456	Zagradec	1	2023-02-23 07:53:57.345799	2023-02-23 07:53:57.345799	1303
457	Zavrč	1	2023-02-23 07:53:57.368362	2023-02-23 07:53:57.368362	2283
458	Zdole	1	2023-02-23 07:53:57.391744	2023-02-23 07:53:57.391744	8272
459	Zgornja Besnica	1	2023-02-23 07:53:57.419639	2023-02-23 07:53:57.419639	4201
460	Zgornja Korena	1	2023-02-23 07:53:57.445621	2023-02-23 07:53:57.445621	2242
461	Zgornja Kungota	1	2023-02-23 07:53:57.469511	2023-02-23 07:53:57.469511	2201
462	Zgornja Ložnica	1	2023-02-23 07:53:57.494	2023-02-23 07:53:57.494	2316
463	Zgornja Polskava	1	2023-02-23 07:53:57.517104	2023-02-23 07:53:57.517104	2314
464	Zgornja Velka	1	2023-02-23 07:53:57.539575	2023-02-23 07:53:57.539575	2213
465	Zgornje Gorje	1	2023-02-23 07:53:57.564195	2023-02-23 07:53:57.564195	4247
466	Zgornje Jezersko	1	2023-02-23 07:53:57.587737	2023-02-23 07:53:57.587737	4206
467	Zgornji Leskovec	1	2023-02-23 07:53:57.613701	2023-02-23 07:53:57.613701	2285
468	Zidani Most	1	2023-02-23 07:53:57.636903	2023-02-23 07:53:57.636903	1432
469	Zreče	1	2023-02-23 07:53:57.658521	2023-02-23 07:53:57.658521	3214
470	Žabnica	1	2023-02-23 07:53:57.683403	2023-02-23 07:53:57.683403	4209
471	Žalec	1	2023-02-23 07:53:57.705411	2023-02-23 07:53:57.705411	3310
472	Železniki	1	2023-02-23 07:53:57.728592	2023-02-23 07:53:57.728592	4228
473	Žetale	1	2023-02-23 07:53:57.751163	2023-02-23 07:53:57.751163	2287
474	Žiri	1	2023-02-23 07:53:57.773381	2023-02-23 07:53:57.773381	4226
475	Žirovnica	1	2023-02-23 07:54:19.314623	2023-02-23 07:54:19.314623	4274
476	Žužemberk	1	2023-02-23 07:54:19.322086	2023-02-23 07:54:19.322086	8360
\.


--
-- Data for Name: conditions; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.conditions (id, name, created_at, updated_at) FROM stdin;
1	Novo	2023-02-23 07:42:06.808187	2023-02-23 07:42:06.808187
2	Rabljeno	2023-02-23 07:42:07.997705	2023-02-23 07:42:07.997705
3	Testno	2023-02-23 07:42:08.002811	2023-02-23 07:42:08.002811
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.countries (id, name, created_at, updated_at) FROM stdin;
1	Slovenija	2023-02-23 07:45:43.003764	2023-02-23 07:45:43.003764
\.


--
-- Data for Name: fuel_types; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.fuel_types (id, name, created_at, updated_at) FROM stdin;
1	bencin	2023-02-23 07:37:02.365409	2023-02-23 07:37:02.365409
2	disel	2023-02-23 07:37:02.386738	2023-02-23 07:37:02.386738
3	HEV - hibrid	2023-02-23 07:37:02.401106	2023-02-23 07:37:02.401106
4	PHEV - plugin hibrid	2023-02-23 07:37:02.417831	2023-02-23 07:37:02.417831
5	e-pogon	2023-02-23 07:37:04.032677	2023-02-23 07:37:04.032677
6	plin	2023-02-23 07:37:04.038069	2023-02-23 07:37:04.038069
\.


--
-- Data for Name: makes; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.makes (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: models; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.models (id, name, make_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.schema_migrations (version) FROM stdin;
20230119074045
20230220224105
20230220224113
20230220224120
20230220224127
20230220225158
20230220225214
20230220225239
20230220225247
20230220225254
20230220225302
20230220225303
20230221060010
20230221074957
20230221115511
20230221152425
20230221153008
20230221162533
20230222230408
\.


--
-- Data for Name: transmission_types; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.transmission_types (id, name, created_at, updated_at) FROM stdin;
1	ročni	2023-02-23 07:55:48.330717	2023-02-23 07:55:48.330717
2	avtomatski	2023-02-23 07:55:48.336616	2023-02-23 07:55:48.336616
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: serbus
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, first_name, last_name) FROM stdin;
1	din.becarevic@scv.si	$2a$12$lExVtoGWhcJbAvQT9myxOe.dn7CAvtwepkbbgGbUA8bP1AEYBG7mS	\N	\N	\N	2023-02-23 07:13:51.315818	2023-02-23 07:13:51.315818	Din	Bećarević
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 58, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 58, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: ad_photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.ad_photos_id_seq', 1, false);


--
-- Name: ads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.ads_id_seq', 10, true);


--
-- Name: body_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.body_types_id_seq', 8, true);


--
-- Name: car_makes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.car_makes_id_seq', 71, true);


--
-- Name: car_models_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.car_models_id_seq', 1313, true);


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.cities_id_seq', 476, true);


--
-- Name: conditions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.conditions_id_seq', 3, true);


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.countries_id_seq', 1, true);


--
-- Name: fuel_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.fuel_types_id_seq', 6, true);


--
-- Name: makes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.makes_id_seq', 1, false);


--
-- Name: models_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.models_id_seq', 1, false);


--
-- Name: transmission_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.transmission_types_id_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serbus
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ad_photos ad_photos_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.ad_photos
    ADD CONSTRAINT ad_photos_pkey PRIMARY KEY (id);


--
-- Name: ads ads_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: body_types body_types_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.body_types
    ADD CONSTRAINT body_types_pkey PRIMARY KEY (id);


--
-- Name: car_makes car_makes_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.car_makes
    ADD CONSTRAINT car_makes_pkey PRIMARY KEY (id);


--
-- Name: car_models car_models_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.car_models
    ADD CONSTRAINT car_models_pkey PRIMARY KEY (id);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: conditions conditions_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.conditions
    ADD CONSTRAINT conditions_pkey PRIMARY KEY (id);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: fuel_types fuel_types_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.fuel_types
    ADD CONSTRAINT fuel_types_pkey PRIMARY KEY (id);


--
-- Name: makes makes_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.makes
    ADD CONSTRAINT makes_pkey PRIMARY KEY (id);


--
-- Name: models models_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.models
    ADD CONSTRAINT models_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: transmission_types transmission_types_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.transmission_types
    ADD CONSTRAINT transmission_types_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: serbus
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: serbus
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: serbus
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: serbus
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_ad_photos_on_ad_id; Type: INDEX; Schema: public; Owner: serbus
--

CREATE INDEX index_ad_photos_on_ad_id ON public.ad_photos USING btree (ad_id);


--
-- Name: index_ads_on_body_type_id; Type: INDEX; Schema: public; Owner: serbus
--

CREATE INDEX index_ads_on_body_type_id ON public.ads USING btree (body_type_id);


--
-- Name: index_ads_on_car_make_id; Type: INDEX; Schema: public; Owner: serbus
--

CREATE INDEX index_ads_on_car_make_id ON public.ads USING btree (car_make_id);


--
-- Name: index_ads_on_car_model_id; Type: INDEX; Schema: public; Owner: serbus
--

CREATE INDEX index_ads_on_car_model_id ON public.ads USING btree (car_model_id);


--
-- Name: index_ads_on_city_id; Type: INDEX; Schema: public; Owner: serbus
--

CREATE INDEX index_ads_on_city_id ON public.ads USING btree (city_id);


--
-- Name: index_ads_on_condition_id; Type: INDEX; Schema: public; Owner: serbus
--

CREATE INDEX index_ads_on_condition_id ON public.ads USING btree (condition_id);


--
-- Name: index_ads_on_country_id; Type: INDEX; Schema: public; Owner: serbus
--

CREATE INDEX index_ads_on_country_id ON public.ads USING btree (country_id);


--
-- Name: index_ads_on_fuel_type_id; Type: INDEX; Schema: public; Owner: serbus
--

CREATE INDEX index_ads_on_fuel_type_id ON public.ads USING btree (fuel_type_id);


--
-- Name: index_ads_on_transmission_type_id; Type: INDEX; Schema: public; Owner: serbus
--

CREATE INDEX index_ads_on_transmission_type_id ON public.ads USING btree (transmission_type_id);


--
-- Name: index_car_models_on_car_make_id; Type: INDEX; Schema: public; Owner: serbus
--

CREATE INDEX index_car_models_on_car_make_id ON public.car_models USING btree (car_make_id);


--
-- Name: index_cities_on_country_id; Type: INDEX; Schema: public; Owner: serbus
--

CREATE INDEX index_cities_on_country_id ON public.cities USING btree (country_id);


--
-- Name: index_models_on_make_id; Type: INDEX; Schema: public; Owner: serbus
--

CREATE INDEX index_models_on_make_id ON public.models USING btree (make_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: serbus
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: serbus
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: ads fk_rails_26c370a976; Type: FK CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.ads
    ADD CONSTRAINT fk_rails_26c370a976 FOREIGN KEY (country_id) REFERENCES public.countries(id);


--
-- Name: ads fk_rails_283438d8b6; Type: FK CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.ads
    ADD CONSTRAINT fk_rails_283438d8b6 FOREIGN KEY (body_type_id) REFERENCES public.body_types(id);


--
-- Name: ads fk_rails_468ee6f236; Type: FK CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.ads
    ADD CONSTRAINT fk_rails_468ee6f236 FOREIGN KEY (city_id) REFERENCES public.cities(id);


--
-- Name: ads fk_rails_4b73418d6c; Type: FK CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.ads
    ADD CONSTRAINT fk_rails_4b73418d6c FOREIGN KEY (car_make_id) REFERENCES public.car_makes(id);


--
-- Name: ads fk_rails_4df460c077; Type: FK CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.ads
    ADD CONSTRAINT fk_rails_4df460c077 FOREIGN KEY (condition_id) REFERENCES public.conditions(id);


--
-- Name: ads fk_rails_50da15c9b6; Type: FK CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.ads
    ADD CONSTRAINT fk_rails_50da15c9b6 FOREIGN KEY (fuel_type_id) REFERENCES public.fuel_types(id);


--
-- Name: ad_photos fk_rails_52f6a043bb; Type: FK CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.ad_photos
    ADD CONSTRAINT fk_rails_52f6a043bb FOREIGN KEY (ad_id) REFERENCES public.ads(id);


--
-- Name: car_models fk_rails_5615b63964; Type: FK CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.car_models
    ADD CONSTRAINT fk_rails_5615b63964 FOREIGN KEY (car_make_id) REFERENCES public.car_makes(id);


--
-- Name: ads fk_rails_66c4a70ae3; Type: FK CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.ads
    ADD CONSTRAINT fk_rails_66c4a70ae3 FOREIGN KEY (car_model_id) REFERENCES public.car_models(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: cities fk_rails_996e05be41; Type: FK CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT fk_rails_996e05be41 FOREIGN KEY (country_id) REFERENCES public.countries(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: ads fk_rails_c4b9fda897; Type: FK CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.ads
    ADD CONSTRAINT fk_rails_c4b9fda897 FOREIGN KEY (transmission_type_id) REFERENCES public.transmission_types(id);


--
-- Name: models fk_rails_d7d4f87ebe; Type: FK CONSTRAINT; Schema: public; Owner: serbus
--

ALTER TABLE ONLY public.models
    ADD CONSTRAINT fk_rails_d7d4f87ebe FOREIGN KEY (make_id) REFERENCES public.makes(id);


--
-- PostgreSQL database dump complete
--

