PGDMP     
    /                x            SGE    12.2    12.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    124223    SGE    DATABASE     �   CREATE DATABASE "SGE" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Peru.1252' LC_CTYPE = 'Spanish_Peru.1252';
    DROP DATABASE "SGE";
                postgres    false            �            1259    124255 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    124253    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    124265    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    124263    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    124247    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    124245    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    124273 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    124283    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    124281    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    124271    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    124291    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    124289 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    124351    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    124349    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    124237    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    124235    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    124226    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    124224    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    124382    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    140651    modulo_actividade    TABLE     ?  CREATE TABLE public.modulo_actividade (
    id integer NOT NULL,
    hora_inicio timestamp with time zone NOT NULL,
    ponente character varying(80) NOT NULL,
    nombre character varying(80) NOT NULL,
    hora_final timestamp with time zone NOT NULL,
    fecha date NOT NULL,
    id_sub_evento_id integer NOT NULL
);
 %   DROP TABLE public.modulo_actividade;
       public         heap    postgres    false            �            1259    140656    modulo_ambiente    TABLE     �   CREATE TABLE public.modulo_ambiente (
    id integer NOT NULL,
    nombre character varying(80) NOT NULL,
    lugar character varying(80) NOT NULL,
    cupos integer
);
 #   DROP TABLE public.modulo_ambiente;
       public         heap    postgres    false            �            1259    140661    modulo_comite    TABLE     �   CREATE TABLE public.modulo_comite (
    id integer NOT NULL,
    lista_personal character varying(80) NOT NULL,
    fecha_inicio date NOT NULL
);
 !   DROP TABLE public.modulo_comite;
       public         heap    postgres    false            �            1259    140607    modulo_evento    TABLE     �   CREATE TABLE public.modulo_evento (
    id integer NOT NULL,
    nombre character varying(80) NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_final date NOT NULL,
    estado boolean NOT NULL
);
 !   DROP TABLE public.modulo_evento;
       public         heap    postgres    false            �            1259    140627    modulo_paquete    TABLE       CREATE TABLE public.modulo_paquete (
    id integer NOT NULL,
    categorizacion character varying(80)[] NOT NULL,
    promociones character varying(80) NOT NULL,
    categoria character varying(80) NOT NULL,
    precio double precision NOT NULL,
    evento_id integer NOT NULL
);
 "   DROP TABLE public.modulo_paquete;
       public         heap    postgres    false            �            1259    132441    modulo_personal    TABLE     "  CREATE TABLE public.modulo_personal (
    id integer NOT NULL,
    nombre character varying(80) NOT NULL,
    apellido character varying(80) NOT NULL,
    usuario character varying(80) NOT NULL,
    "contraseña" character varying(80) NOT NULL,
    correo character varying(80) NOT NULL
);
 #   DROP TABLE public.modulo_personal;
       public         heap    postgres    false            �            1259    156993    modulo_reporte    TABLE        CREATE TABLE public.modulo_reporte (
    id integer NOT NULL,
    tipos_id integer NOT NULL,
    evento_id integer NOT NULL
);
 "   DROP TABLE public.modulo_reporte;
       public         heap    postgres    false            �            1259    156991    modulo_reporte_id_seq    SEQUENCE     �   CREATE SEQUENCE public.modulo_reporte_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.modulo_reporte_id_seq;
       public          postgres    false    229            �           0    0    modulo_reporte_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.modulo_reporte_id_seq OWNED BY public.modulo_reporte.id;
          public          postgres    false    228            �            1259    140666    modulo_subevento    TABLE       CREATE TABLE public.modulo_subevento (
    id integer NOT NULL,
    nombre character varying(80) NOT NULL,
    estado boolean NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_final date NOT NULL,
    ambiente_id integer NOT NULL,
    id_evento_id integer NOT NULL
);
 $   DROP TABLE public.modulo_subevento;
       public         heap    postgres    false            �            1259    157001    modulo_tipos    TABLE     h   CREATE TABLE public.modulo_tipos (
    id integer NOT NULL,
    tipos character varying(80) NOT NULL
);
     DROP TABLE public.modulo_tipos;
       public         heap    postgres    false            �            1259    156999    modulo_tipos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.modulo_tipos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.modulo_tipos_id_seq;
       public          postgres    false    231            �           0    0    modulo_tipos_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.modulo_tipos_id_seq OWNED BY public.modulo_tipos.id;
          public          postgres    false    230            �
           2604    124258    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    124268    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    124250    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    124276    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    124286    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    124294    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    124354    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �
           2604    124240    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    124229    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    157013    modulo_reporte id    DEFAULT     v   ALTER TABLE ONLY public.modulo_reporte ALTER COLUMN id SET DEFAULT nextval('public.modulo_reporte_id_seq'::regclass);
 @   ALTER TABLE public.modulo_reporte ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �
           2604    157004    modulo_tipos id    DEFAULT     r   ALTER TABLE ONLY public.modulo_tipos ALTER COLUMN id SET DEFAULT nextval('public.modulo_tipos_id_seq'::regclass);
 >   ALTER TABLE public.modulo_tipos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �          0    124255 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   ��       �          0    124265    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   �       �          0    124247    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   �       �          0    124273 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   .�       �          0    124283    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   z�       �          0    124291    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   ��       �          0    124351    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   ��       �          0    124237    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   ��       �          0    124226    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   ��       �          0    124382    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   ��       �          0    140651    modulo_actividade 
   TABLE DATA           r   COPY public.modulo_actividade (id, hora_inicio, ponente, nombre, hora_final, fecha, id_sub_evento_id) FROM stdin;
    public          postgres    false    224   ��       �          0    140656    modulo_ambiente 
   TABLE DATA           C   COPY public.modulo_ambiente (id, nombre, lugar, cupos) FROM stdin;
    public          postgres    false    225   r�       �          0    140661    modulo_comite 
   TABLE DATA           I   COPY public.modulo_comite (id, lista_personal, fecha_inicio) FROM stdin;
    public          postgres    false    226   ��       �          0    140607    modulo_evento 
   TABLE DATA           V   COPY public.modulo_evento (id, nombre, fecha_inicio, fecha_final, estado) FROM stdin;
    public          postgres    false    222   ��       �          0    140627    modulo_paquete 
   TABLE DATA           g   COPY public.modulo_paquete (id, categorizacion, promociones, categoria, precio, evento_id) FROM stdin;
    public          postgres    false    223   ��       �          0    132441    modulo_personal 
   TABLE DATA           _   COPY public.modulo_personal (id, nombre, apellido, usuario, "contraseña", correo) FROM stdin;
    public          postgres    false    221   $�       �          0    156993    modulo_reporte 
   TABLE DATA           A   COPY public.modulo_reporte (id, tipos_id, evento_id) FROM stdin;
    public          postgres    false    229   A�       �          0    140666    modulo_subevento 
   TABLE DATA           t   COPY public.modulo_subevento (id, nombre, estado, fecha_inicio, fecha_final, ambiente_id, id_evento_id) FROM stdin;
    public          postgres    false    227   ^�       �          0    157001    modulo_tipos 
   TABLE DATA           1   COPY public.modulo_tipos (id, tipos) FROM stdin;
    public          postgres    false    231   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 100, true);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 104, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 8, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 39, true);
          public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 23, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);
          public          postgres    false    202            �           0    0    modulo_reporte_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.modulo_reporte_id_seq', 1, false);
          public          postgres    false    228            �           0    0    modulo_tipos_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.modulo_tipos_id_seq', 7, true);
          public          postgres    false    230            �
           2606    124380    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            �
           2606    124307 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211                       2606    124270 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            �
           2606    124260    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �
           2606    124298 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �
           2606    124252 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            	           2606    124288 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215                       2606    124322 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215                       2606    124278    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213                       2606    124296 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217                       2606    124336 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217                       2606    124374     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213                       2606    124360 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            �
           2606    124244 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �
           2606    124242 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �
           2606    124234 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203                       2606    124389 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            /           2606    157015 "   modulo_reporte modulo_reporte_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.modulo_reporte
    ADD CONSTRAINT modulo_reporte_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.modulo_reporte DROP CONSTRAINT modulo_reporte_pkey;
       public            postgres    false    229            2           2606    157006    modulo_tipos modulo_tipos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.modulo_tipos
    ADD CONSTRAINT modulo_tipos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.modulo_tipos DROP CONSTRAINT modulo_tipos_pkey;
       public            postgres    false    231            $           2606    140655 )   modulo_actividade public_actividades_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.modulo_actividade
    ADD CONSTRAINT public_actividades_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.modulo_actividade DROP CONSTRAINT public_actividades_pkey;
       public            postgres    false    224            &           2606    140660 %   modulo_ambiente public_ambientes_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.modulo_ambiente
    ADD CONSTRAINT public_ambientes_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.modulo_ambiente DROP CONSTRAINT public_ambientes_pkey;
       public            postgres    false    225            (           2606    140665     modulo_comite public_comite_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.modulo_comite
    ADD CONSTRAINT public_comite_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.modulo_comite DROP CONSTRAINT public_comite_pkey;
       public            postgres    false    226                       2606    140611     modulo_evento public_evento_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.modulo_evento
    ADD CONSTRAINT public_evento_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.modulo_evento DROP CONSTRAINT public_evento_pkey;
       public            postgres    false    222            !           2606    140634 "   modulo_paquete public_paquete_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.modulo_paquete
    ADD CONSTRAINT public_paquete_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.modulo_paquete DROP CONSTRAINT public_paquete_pkey;
       public            postgres    false    223                       2606    132445 $   modulo_personal public_personal_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.modulo_personal
    ADD CONSTRAINT public_personal_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.modulo_personal DROP CONSTRAINT public_personal_pkey;
       public            postgres    false    221            ,           2606    140670 '   modulo_subevento public_subeventos_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.modulo_subevento
    ADD CONSTRAINT public_subeventos_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.modulo_subevento DROP CONSTRAINT public_subeventos_pkey;
       public            postgres    false    227            �
           1259    124381    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            �
           1259    124318 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            �
           1259    124319 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �
           1259    124304 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207                       1259    124334 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            
           1259    124333 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215                       1259    124348 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217                       1259    124347 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217                       1259    124375     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213                       1259    124371 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219                       1259    124372 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219                       1259    124391 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220                       1259    124390 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            -           1259    157026 !   modulo_reporte_evento_id_c4e48338    INDEX     a   CREATE INDEX modulo_reporte_evento_id_c4e48338 ON public.modulo_reporte USING btree (evento_id);
 5   DROP INDEX public.modulo_reporte_evento_id_c4e48338;
       public            postgres    false    229            0           1259    157020     modulo_reporte_tipos_id_4c7e07b6    INDEX     _   CREATE INDEX modulo_reporte_tipos_id_4c7e07b6 ON public.modulo_reporte USING btree (tipos_id);
 4   DROP INDEX public.modulo_reporte_tipos_id_4c7e07b6;
       public            postgres    false    229            "           1259    140688 ,   public_actividades_id_sub_evento_id_06ef240c    INDEX     v   CREATE INDEX public_actividades_id_sub_evento_id_06ef240c ON public.modulo_actividade USING btree (id_sub_evento_id);
 @   DROP INDEX public.public_actividades_id_sub_evento_id_06ef240c;
       public            postgres    false    224                       1259    140650 !   public_paquete_evento_id_eaf80d04    INDEX     a   CREATE INDEX public_paquete_evento_id_eaf80d04 ON public.modulo_paquete USING btree (evento_id);
 5   DROP INDEX public.public_paquete_evento_id_eaf80d04;
       public            postgres    false    223            )           1259    140686 &   public_subeventos_ambiente_id_5deb9512    INDEX     j   CREATE INDEX public_subeventos_ambiente_id_5deb9512 ON public.modulo_subevento USING btree (ambiente_id);
 :   DROP INDEX public.public_subeventos_ambiente_id_5deb9512;
       public            postgres    false    227            *           1259    140687 '   public_subeventos_id_evento_id_0ae1451e    INDEX     l   CREATE INDEX public_subeventos_id_evento_id_0ae1451e ON public.modulo_subevento USING btree (id_evento_id);
 ;   DROP INDEX public.public_subeventos_id_evento_id_0ae1451e;
       public            postgres    false    227            5           2606    124313 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    211    2806            4           2606    124308 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2811    211    209            3           2606    124299 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    2801    205            7           2606    124328 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    209    2811    215            6           2606    124323 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2819    215    213            9           2606    124342 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    217    2806    207            8           2606    124337 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2819    217    213            :           2606    124361 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    219    205    2801            ;           2606    124366 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    213    2819    219            @           2606    157008 D   modulo_reporte modulo_reporte_evento_id_c4e48338_fk_modulo_evento_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.modulo_reporte
    ADD CONSTRAINT modulo_reporte_evento_id_c4e48338_fk_modulo_evento_id FOREIGN KEY (evento_id) REFERENCES public.modulo_evento(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.modulo_reporte DROP CONSTRAINT modulo_reporte_evento_id_c4e48338_fk_modulo_evento_id;
       public          postgres    false    229    2846    222            A           2606    157021 B   modulo_reporte modulo_reporte_tipos_id_4c7e07b6_fk_modulo_tipos_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.modulo_reporte
    ADD CONSTRAINT modulo_reporte_tipos_id_4c7e07b6_fk_modulo_tipos_id FOREIGN KEY (tipos_id) REFERENCES public.modulo_tipos(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.modulo_reporte DROP CONSTRAINT modulo_reporte_tipos_id_4c7e07b6_fk_modulo_tipos_id;
       public          postgres    false    231    229    2866            =           2606    140694 J   modulo_actividade public_actividade_id_sub_evento_id_bea32ac6_fk_public_su    FK CONSTRAINT     �   ALTER TABLE ONLY public.modulo_actividade
    ADD CONSTRAINT public_actividade_id_sub_evento_id_bea32ac6_fk_public_su FOREIGN KEY (id_sub_evento_id) REFERENCES public.modulo_subevento(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.modulo_actividade DROP CONSTRAINT public_actividade_id_sub_evento_id_bea32ac6_fk_public_su;
       public          postgres    false    2860    224    227            <           2606    140645 D   modulo_paquete public_paquete_evento_id_eaf80d04_fk_public_evento_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.modulo_paquete
    ADD CONSTRAINT public_paquete_evento_id_eaf80d04_fk_public_evento_id FOREIGN KEY (evento_id) REFERENCES public.modulo_evento(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.modulo_paquete DROP CONSTRAINT public_paquete_evento_id_eaf80d04_fk_public_evento_id;
       public          postgres    false    223    222    2846            ?           2606    140689 M   modulo_subevento public_subeventos_ambiente_id_5deb9512_fk_public_ambiente_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.modulo_subevento
    ADD CONSTRAINT public_subeventos_ambiente_id_5deb9512_fk_public_ambiente_id FOREIGN KEY (ambiente_id) REFERENCES public.modulo_ambiente(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.modulo_subevento DROP CONSTRAINT public_subeventos_ambiente_id_5deb9512_fk_public_ambiente_id;
       public          postgres    false    2854    225    227            >           2606    140681 L   modulo_subevento public_subeventos_id_evento_id_0ae1451e_fk_public_evento_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.modulo_subevento
    ADD CONSTRAINT public_subeventos_id_evento_id_0ae1451e_fk_public_evento_id FOREIGN KEY (id_evento_id) REFERENCES public.modulo_evento(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.modulo_subevento DROP CONSTRAINT public_subeventos_id_evento_id_0ae1451e_fk_public_evento_id;
       public          postgres    false    227    222    2846            �      x�3�t���,IU0�2�1��b���� e��      �   T  x��˱-9D����t���oG+�$��j�؟��҉�A�L�e�/�y9���^��3U��c",0!��+L�5&�f���������w�߅������y��qy>�<_\�!/>B^!/�OB^$!/��Mȋ!����Hy����Hy餼|=�5-IyY��lR^)/���Gɫ��WF�+��UP��M�7���US�j(y���:Z^��6Z^;-����I��7��`���C����1��c�1��y��IF�#oަ�Vey���9V�~��5V�:+o������b�m�����o�����ɻ��w��;��]p�.9yW��kn�\}�U}�N��������?�m�      �   �  x�m�ݎ�0F����'�b~\�5*Ulb�H��B�վ}�=�1���A��1��iy�n��������]���>�au@�����lxs��8�`����S��`�Kf�}��>�KU5� +��v����bQP�+*28
nL��m}=�&��`.R���"F:�:�ԬB@���M2x�n�� ��i���*>>�|:��X~6^������<�����pUp�π�H���G���'��tk����j�0��Vyg=����%Ld��`���}]������!�ỷ�#�g�@N8�:��Q��t��c׽���Q	g��R�J%L$����N�cs�_��cc\/1�JFӺ�T�h����Q�ܖy�on?�c���4�F�Db�ˤj�$Q4����!SF��k�z�m����hC�&�Ķ�Q�(�8n��7�'���PE%�8��Q$�5T�$1ܒi�w�Ӹ��'�@�ʢQԓ�ꌦQRҢ:����m�:����GFA�j�����%
�L0"�[���\����S���8�����iE+${�(����b�[��?���ls��<�v?�m��yFl~`�|�*�˥k+�!�P`��:yN/��J�����]?gO��GЫ�3���H��3��H��3�G|$8�����-��C��^e\�TDfU�K5dV�]����q���{:��xSt��*�K$W��p�0a|%����"Pn�t}�_�m��V�BL��:�����W��xZaɋ�dt\e�v�4��\T��/�aJ�]�Sv���x)%�\M)����X�S{
-�M!����ؖ[
,�]9����hKi=�Fn���v�M]��0�Z	(rȩ>	.s�3�$��IGw�9?|��'B�Uq�J��$}IHp��� �}�bo      �   <  x����n�@�k|
.�3�aE�M�V��j���f�F-o�ϰ/�����M���Nf~�(�>���2AP�IP� �q�>S�u�HO��!</�E\MWAo\mN�V��6�ba�wW^��;��Mx���*Y
�0�q)���a�
�a�E+�9ʃ��M]./�w旅L.B~I%@ ����(PT�T� �սn^!+y!�S>���7���m+v����yy<������?j.؁����1G�@�dH��Gq����X*<��O�����L/�W��F�]���8.�`f9�ٱ')��ά�����U��m��z�-,������\�g�C��=W8n���B+������S1�X��׈����t.��S� �x��3Y8}S��a�ߴ�����N4�5�3Z�������g(�>&�~���,L�k��e���+r�#�=����=7d�:���wJM���>J�u��%�J�6ѝ��6v��'�7�:e���.aA���%���j(}@Y��w�H�cV�	��E��ilVg(����;^��K�� ` Bht��4��ʭV�7".�      �      x������ � �      �      x������ � �      �   �  x����n�F���S,tj�z�3�͛*������K�Ú�m�T�:�S���b�%�D^IN���9��p���$Ȑ�L�J���r������Ǣj��7��%?����w�G.ϋ|���_��OLG�L*�*!����-�C�g(P��hn�	(� k��i]V-���m�,�� uE��eY��[�<(��|.�FT��O}_n�@p���y�U�)hʵD)�ڂ��Y��ʵe]��<�k]Y-�Nt�j��n�#�g�*e2�(��ו?�w�]�0�-�����M������WU���,EH%��B �����U���#�[�l�EVH��~�K�N\[�����e��C�A
�-K������@�)c�'k�`���0�
���R(����팜^���'�+2�y:��M����_�L���z:O&��>'��9�_���������|�O�o�JA�(�r�5_e;1T���+8� ��F����*�0������u��m�T����܂��=L�0�Bs%�P�����&��\ʁra���x�����\E.��CMf�]D�6&ڔi
�1��Ev_����U�4�PRrV~*r2/�C����,Q,�w�JQp\ϗ�rQVes�Fn\㯼?9��\U��Ab�ʄR`�WU,��哧f�uV?��r��}G��fYg��r��
2EM5��B^,\��-^��/�iI�g��'2�ݭ/:� ķ���Zi�D_����[=y��D,�������'oݣ[֋C�d,dF����?��>�?l�E��a��G���Ѐ����kPS���2A�{�}�={H�H�;�C�Q����	?����*�r�4i�څc��֌�3l��2"�{���Z��Xf+�����������t���u�к'�aX� ��*��5A%.�l���p��?K(��K��j�E���A�FoF�M��_mޏ��~��UW��}������ ��UL|�?'e���½��2�8\�`���n�rУ�� Z�      �   �   x�]��n!���a�B~��K/,km--��)o6)l��iflc��#%�����|��I�8��I���UQ�d��b�Q_���#��Κ�s]��P�J����q��n�0��n��`/���\�*7�y�k1\���x�R�iz�>:����6��(���W�d���cǂ�&7��:�n��n�,m��P(���7 ����      �   8  x���[n�0���*�����ɲ7ELT��1	�-UE�������Ѝ���� ���z�]S�O`��+b%hnN T�i|}N��L��]ں{�p�I���l����i�oû��~��r�uF���`G�;�u��K����sJ`ߥ�C�qѽ��;���k��J+��Rk~d]3�h{�z�f޶��6����vUF���b7�4��o]�<�H�d�Y-|k���Џ��Hb��V��:7�s�u�lj�]2%$�\-2��6�q�7�n��~���c�[+ﮩ/nqȫ�cѶ~�����\�L�V��M�Y̚�Z�����O*CR��w�Mu�a���Q�,�j�N}���>���͎��G��O�ng��T/u��X������.����P���3E.S�!�#@�]
�1�"�0��(3��gQp��������	7<��Sڥ�?x��3^!/���R�Ͽ�H�<R�0�K"�(�Yb^|��/<K�WB��d�y����և8�o.:	�I�&�[fZl �)����o<�
1]Wen�_y8�f½-      �   �  x���[n�@  �ﺊn 33 �?,bUP!71�#���ozs���� ��a�^��+\���yUe �4���x�����`Qn�8%���؜��W�<O �j��v���Uʙz�p�
\�ns	��K�GhIR��s��ĩ%�r&k������c#��mi����.~$���6y�ad��N�"���g6��:$�H=}5��]���
����1�Ӄ�I���z}���#��|�!�� ���P�%�8�@e(�Ō=�,2-�2�`�+���I�qQ��o���.�j��~բ�)�Y[�����?�b���G>�7���5$��OЈ^O5Ǽk��e�$�D1�N$�� |�#����dz�cf)�V�V��ᚈvcˬ8�'}�B�ޡ�CEh.A�@�g��|6�}"/      �   �   x�u�Aj�0E��)�
��,�]�C�UM��f"�@�	#%!>}E!L���ϟ�LS�W�u8���r�ޘ��Î%@��8]2t��i�8��� �!�ᄩ$aX���#s���z�Xb���Q�	�p:'���B]zT� <c��"���4	��h�Q�D�d�\I9������˟J_���~ i�O      �   E   x�3�t,M�,�/��W�*M�SHL��W�����,K-*�LILQpN,9�9'39Q!������+F��� �      �      x������ � �      �   �   x�u�A
�0�ur����T���i�M$���I5`'R�I<�3��a��7#[c5/yj%�ᕴJp��R�ҍ�\�zj��+�S��/�%y�g�l9a�1$Ҝ�"^@at��l� vnpxr䧋���aL]{D��䰄�tc���2²Dn�����><�n{w����7��B�      �   m   x�3�v-.)M�L�+I�	(�OK-���K����L�M*ʯ�t��K/J-�W�VI��I-�D��4�4�2"�d��@��d8 ��M,I-�L�Qp�()JD6���=... �KY      �      x������ � �      �      x������ � �      �   G   x�3�IM���LN�QN-.���S0�R�ͬHMQJM��,��L�420��54�542��LCN#�=... ��      �   g   x�3�tN�+�LILQHIU��+N.�,�/�2�D��9�S�J2�2�S�\����x��Ģ�|.Sϵ,5�$�ˌӱ8��$5/93�˜�7�$�(31'��+F��� � #w     