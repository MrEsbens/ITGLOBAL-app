PGDMP  2                 
    |            itglobal_app    16.0    16.0 e    s           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            t           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            u           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            v           1262    19083    itglobal_app    DATABASE     �   CREATE DATABASE itglobal_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE itglobal_app;
                postgres    false            �            1259    21130    buses    TABLE     a   CREATE TABLE public.buses (
    id bigint NOT NULL,
    number character varying(20) NOT NULL
);
    DROP TABLE public.buses;
       public         heap    postgres    false            �            1259    21129    buses_id_seq    SEQUENCE     u   CREATE SEQUENCE public.buses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.buses_id_seq;
       public          postgres    false    229            w           0    0    buses_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.buses_id_seq OWNED BY public.buses.id;
          public          postgres    false    228            �            1259    21086    cache    TABLE     �   CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache;
       public         heap    postgres    false            �            1259    21093    cache_locks    TABLE     �   CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache_locks;
       public         heap    postgres    false            �            1259    21118    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    21117    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    227            x           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    226            �            1259    21110    job_batches    TABLE     d  CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);
    DROP TABLE public.job_batches;
       public         heap    postgres    false            �            1259    21101    jobs    TABLE     �   CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);
    DROP TABLE public.jobs;
       public         heap    postgres    false            �            1259    21100    jobs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public          postgres    false    224            y           0    0    jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;
          public          postgres    false    223            �            1259    21053 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    21052    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    216            z           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    215            �            1259    21070    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    postgres    false            �            1259    21190    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false            �            1259    21189    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    239            {           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    238            �            1259    21156    route_stops    TABLE     �   CREATE TABLE public.route_stops (
    id bigint NOT NULL,
    route_id bigint NOT NULL,
    stop_id bigint NOT NULL,
    stop_order integer NOT NULL
);
    DROP TABLE public.route_stops;
       public         heap    postgres    false            �            1259    21155    route_stops_id_seq    SEQUENCE     {   CREATE SEQUENCE public.route_stops_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.route_stops_id_seq;
       public          postgres    false    235            |           0    0    route_stops_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.route_stops_id_seq OWNED BY public.route_stops.id;
          public          postgres    false    234            �            1259    21137    routes    TABLE     �   CREATE TABLE public.routes (
    id bigint NOT NULL,
    route_name character varying(100) NOT NULL,
    bus_id bigint NOT NULL
);
    DROP TABLE public.routes;
       public         heap    postgres    false            �            1259    21136    routes_id_seq    SEQUENCE     v   CREATE SEQUENCE public.routes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.routes_id_seq;
       public          postgres    false    231            }           0    0    routes_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.routes_id_seq OWNED BY public.routes.id;
          public          postgres    false    230            �            1259    21173 	   schedules    TABLE     �   CREATE TABLE public.schedules (
    id bigint NOT NULL,
    route_stop_id bigint NOT NULL,
    bus_id bigint NOT NULL,
    arrival_time time(0) without time zone NOT NULL
);
    DROP TABLE public.schedules;
       public         heap    postgres    false            �            1259    21172    schedules_id_seq    SEQUENCE     y   CREATE SEQUENCE public.schedules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.schedules_id_seq;
       public          postgres    false    237            ~           0    0    schedules_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.schedules_id_seq OWNED BY public.schedules.id;
          public          postgres    false    236            �            1259    21077    sessions    TABLE     �   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            �            1259    21149    stops    TABLE     `   CREATE TABLE public.stops (
    id bigint NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.stops;
       public         heap    postgres    false            �            1259    21148    stops_id_seq    SEQUENCE     u   CREATE SEQUENCE public.stops_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.stops_id_seq;
       public          postgres    false    233                       0    0    stops_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.stops_id_seq OWNED BY public.stops.id;
          public          postgres    false    232            �            1259    21060    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    21059    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    218            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    217            �           2604    21133    buses id    DEFAULT     d   ALTER TABLE ONLY public.buses ALTER COLUMN id SET DEFAULT nextval('public.buses_id_seq'::regclass);
 7   ALTER TABLE public.buses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    21121    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    21104    jobs id    DEFAULT     b   ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    21056    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    21193    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    21159    route_stops id    DEFAULT     p   ALTER TABLE ONLY public.route_stops ALTER COLUMN id SET DEFAULT nextval('public.route_stops_id_seq'::regclass);
 =   ALTER TABLE public.route_stops ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    21140 	   routes id    DEFAULT     f   ALTER TABLE ONLY public.routes ALTER COLUMN id SET DEFAULT nextval('public.routes_id_seq'::regclass);
 8   ALTER TABLE public.routes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    21176    schedules id    DEFAULT     l   ALTER TABLE ONLY public.schedules ALTER COLUMN id SET DEFAULT nextval('public.schedules_id_seq'::regclass);
 ;   ALTER TABLE public.schedules ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    21152    stops id    DEFAULT     d   ALTER TABLE ONLY public.stops ALTER COLUMN id SET DEFAULT nextval('public.stops_id_seq'::regclass);
 7   ALTER TABLE public.stops ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    21063    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            f          0    21130    buses 
   TABLE DATA           +   COPY public.buses (id, number) FROM stdin;
    public          postgres    false    229   ws       ^          0    21086    cache 
   TABLE DATA           7   COPY public.cache (key, value, expiration) FROM stdin;
    public          postgres    false    221   �s       _          0    21093    cache_locks 
   TABLE DATA           =   COPY public.cache_locks (key, owner, expiration) FROM stdin;
    public          postgres    false    222   �s       d          0    21118    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    227    t       b          0    21110    job_batches 
   TABLE DATA           �   COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
    public          postgres    false    225   t       a          0    21101    jobs 
   TABLE DATA           c   COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
    public          postgres    false    224   :t       Y          0    21053 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    216   Wt       \          0    21070    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          postgres    false    219   u       p          0    21190    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public          postgres    false    239   !u       l          0    21156    route_stops 
   TABLE DATA           H   COPY public.route_stops (id, route_id, stop_id, stop_order) FROM stdin;
    public          postgres    false    235   >u       h          0    21137    routes 
   TABLE DATA           8   COPY public.routes (id, route_name, bus_id) FROM stdin;
    public          postgres    false    231   2w       n          0    21173 	   schedules 
   TABLE DATA           L   COPY public.schedules (id, route_stop_id, bus_id, arrival_time) FROM stdin;
    public          postgres    false    237   �w       ]          0    21077    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public          postgres    false    220   z       j          0    21149    stops 
   TABLE DATA           )   COPY public.stops (id, name) FROM stdin;
    public          postgres    false    233   1z       [          0    21060    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    218   �{       �           0    0    buses_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.buses_id_seq', 12, true);
          public          postgres    false    228            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    226            �           0    0    jobs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);
          public          postgres    false    223            �           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 9, true);
          public          postgres    false    215            �           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    238            �           0    0    route_stops_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.route_stops_id_seq', 120, true);
          public          postgres    false    234            �           0    0    routes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.routes_id_seq', 12, true);
          public          postgres    false    230            �           0    0    schedules_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.schedules_id_seq', 120, true);
          public          postgres    false    236            �           0    0    stops_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.stops_id_seq', 20, true);
          public          postgres    false    232            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    217            �           2606    21135    buses buses_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.buses
    ADD CONSTRAINT buses_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.buses DROP CONSTRAINT buses_pkey;
       public            postgres    false    229            �           2606    21099    cache_locks cache_locks_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);
 F   ALTER TABLE ONLY public.cache_locks DROP CONSTRAINT cache_locks_pkey;
       public            postgres    false    222            �           2606    21092    cache cache_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);
 :   ALTER TABLE ONLY public.cache DROP CONSTRAINT cache_pkey;
       public            postgres    false    221            �           2606    21126    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    227            �           2606    21128 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    227            �           2606    21116    job_batches job_batches_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
       public            postgres    false    225            �           2606    21108    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public            postgres    false    224            �           2606    21058    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    216            �           2606    21076 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            postgres    false    219            �           2606    21197 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    239            �           2606    21200 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    239            �           2606    21161    route_stops route_stops_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.route_stops
    ADD CONSTRAINT route_stops_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.route_stops DROP CONSTRAINT route_stops_pkey;
       public            postgres    false    235            �           2606    21142    routes routes_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.routes
    ADD CONSTRAINT routes_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.routes DROP CONSTRAINT routes_pkey;
       public            postgres    false    231            �           2606    21178    schedules schedules_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.schedules DROP CONSTRAINT schedules_pkey;
       public            postgres    false    237            �           2606    21083    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    220            �           2606    21154    stops stops_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.stops
    ADD CONSTRAINT stops_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.stops DROP CONSTRAINT stops_pkey;
       public            postgres    false    233            �           2606    21069    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    218            �           2606    21067    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218            �           1259    21109    jobs_queue_index    INDEX     B   CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);
 $   DROP INDEX public.jobs_queue_index;
       public            postgres    false    224            �           1259    21198 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    239    239            �           1259    21085    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public            postgres    false    220            �           1259    21084    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public            postgres    false    220            �           2606    21162 (   route_stops route_stops_route_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.route_stops
    ADD CONSTRAINT route_stops_route_id_foreign FOREIGN KEY (route_id) REFERENCES public.routes(id);
 R   ALTER TABLE ONLY public.route_stops DROP CONSTRAINT route_stops_route_id_foreign;
       public          postgres    false    235    4792    231            �           2606    21167 '   route_stops route_stops_stop_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.route_stops
    ADD CONSTRAINT route_stops_stop_id_foreign FOREIGN KEY (stop_id) REFERENCES public.stops(id);
 Q   ALTER TABLE ONLY public.route_stops DROP CONSTRAINT route_stops_stop_id_foreign;
       public          postgres    false    233    4794    235            �           2606    21143    routes routes_bus_id_foreign    FK CONSTRAINT     z   ALTER TABLE ONLY public.routes
    ADD CONSTRAINT routes_bus_id_foreign FOREIGN KEY (bus_id) REFERENCES public.buses(id);
 F   ALTER TABLE ONLY public.routes DROP CONSTRAINT routes_bus_id_foreign;
       public          postgres    false    229    4790    231            �           2606    21184 "   schedules schedules_bus_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_bus_id_foreign FOREIGN KEY (bus_id) REFERENCES public.buses(id);
 L   ALTER TABLE ONLY public.schedules DROP CONSTRAINT schedules_bus_id_foreign;
       public          postgres    false    229    4790    237            �           2606    21179 )   schedules schedules_route_stop_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_route_stop_id_foreign FOREIGN KEY (route_stop_id) REFERENCES public.route_stops(id);
 S   ALTER TABLE ONLY public.schedules DROP CONSTRAINT schedules_route_stop_id_foreign;
       public          postgres    false    4796    237    235            f   ?   x�%��� �w���g0�^�A�y�����t��L�PN�n2"؎8N��@�M$�Pz��~b��      ^      x������ � �      _      x������ � �      d      x������ � �      b      x������ � �      a      x������ � �      Y   �   x�e���  �g���r��/KdM����������
��{���e�%ќ0�!PL� ������q�U'�P�)�����+T�����[�M�)ǩB�@ ��l����8)yz/ᴃ�V (m�-v��G�yOi+�?k���[��x      \      x������ � �      p      x������ � �      l   �  x�-��m�0��bQ/����:�Yr6�;#Y�96���Uuc��_ک��-�u��gQ�����~aY��;���^.�|Ef�o�Ш���WiN�x'7��	��L�l.m#^�<�Nĳ��<�:oM��QP��G�̬	�k�=܋h��p/R�^z�_$ýH�{��"�Erso�ŽY$�7K"�M�V�6�w�{��w����+�P�0�!�C4܇d��p������p��>$7�%[ܗ�cG��O.�˪��vY����zQ(p�o0�>f��d�@f�JP���@"ԁE��P�DB�S&�.��z����$���I��N��X��^d^0ԛ�4��%Clrh�N�	��&|RE�d!�*B(��TF�E(%E��CU���q]O�����f>��@���9Ws�|�6��C{*A�h:�>އ�[u�;\��ݫ��ݫ�ݫ3�ݫc�ݫ��ݫ����7�*���"��      h   ?   x�%�� !��;�c0G.��JëJ�^!�&�v��-���ȹb���؃����&�o���5UO      n   �  x�M�K��8�x���W�e�����x��)("�*Y���?��~��ﵡyu�׎���u`h5���Ԫ^�W������zp�Z�p��P�f��a7�ٮiKG�πz6l�2v4��-��l�=�i��l�Դ�A��PNΐ���zACmNh5��'��UjN%XJh5��'��V� j�T#lͦԴ�F�:�M�iS��M4�PӦa�h65��M5�NM�X����S����,%����	��>��;5�,%����	�֓�Gk~ 5m���aSj�T#æԴ�F8&�M�iS�pl�PӦᤦM���I��S���z��fwB`��>g��S	�����jn'X�=ꫀ�?��6�WŲ�5m���eSj�T#\˦Դ�F�6�M�iS�pSӦ�y���f����4��{�7={FDX�=웢���yO���Έ��>�h���GL�j]��T��5��u5��qRׄ���$��I]�ZW�<'uM�j]�2ʕM�d����<�Q��s|o���{��\�9�{B�s��}:����}��D��̙�n�O�_��w�}����_7�G��C��[��k�}$�=d�����G��C����q�}$�=d�}�=db��������X�      ]      x������ � �      j   |  x��S�N�@]���YJ��Զ�q��P��h4$ąѸa�������g�&B^�N:��sg��tn��+�8�X�+���2����#���g��@(>�9�h^mf��k���A�|����ݵ�1�SqaY0
��Y�����)���`�SD
���Р��XҔ3� ��R���g�3���D�5�S	�t�G7��QtT�	ɴ���؎B�L�(�@��7��hݦ�Y3 X����B]��LK[��a&�j��S[GRՑK�A�x��N��H�Ǎ\_��{.�������<؊����FAd�u+�aѱ���̚/�+��x	���ά��L����$q�*(��	�K��DG��݂^k�������?��      [      x������ � �     