PGDMP     7                	    y           DB_Administracion    13.3    13.3 ?    h           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            i           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            j           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            k           1262    17703    DB_Administracion    DATABASE     p   CREATE DATABASE "DB_Administracion" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
 #   DROP DATABASE "DB_Administracion";
                postgres    false            ?            1259    17717    Index_autores    TABLE     ?   CREATE TABLE public."Index_autores" (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL
);
 #   DROP TABLE public."Index_autores";
       public         heap    postgres    false            ?            1259    17715    Index_autores_id_seq    SEQUENCE        CREATE SEQUENCE public."Index_autores_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Index_autores_id_seq";
       public          postgres    false    203            l           0    0    Index_autores_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Index_autores_id_seq" OWNED BY public."Index_autores".id;
          public          postgres    false    202            ?            1259    17725    Index_categorias    TABLE     r   CREATE TABLE public."Index_categorias" (
    id bigint NOT NULL,
    categoria character varying(100) NOT NULL
);
 &   DROP TABLE public."Index_categorias";
       public         heap    postgres    false            ?            1259    17723    Index_categorias_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Index_categorias_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Index_categorias_id_seq";
       public          postgres    false    205            m           0    0    Index_categorias_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Index_categorias_id_seq" OWNED BY public."Index_categorias".id;
          public          postgres    false    204            ?            1259    17733    Index_libros    TABLE     ?  CREATE TABLE public."Index_libros" (
    id bigint NOT NULL,
    titulo character varying(100) NOT NULL,
    "año" integer NOT NULL,
    editor character varying(100) NOT NULL,
    idioma character varying(100) NOT NULL,
    descripcion text NOT NULL,
    disponibles boolean NOT NULL,
    precio integer NOT NULL,
    imagen character varying(100),
    autor_id bigint,
    categoria_id bigint
);
 "   DROP TABLE public."Index_libros";
       public         heap    postgres    false            ?            1259    17731    Index_libros_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."Index_libros_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Index_libros_id_seq";
       public          postgres    false    207            n           0    0    Index_libros_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Index_libros_id_seq" OWNED BY public."Index_libros".id;
          public          postgres    false    206            ?            1259    17894    admin_interface_theme    TABLE     ?	  CREATE TABLE public.admin_interface_theme (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    active boolean NOT NULL,
    title character varying(50) NOT NULL,
    title_visible boolean NOT NULL,
    logo character varying(100) NOT NULL,
    logo_visible boolean NOT NULL,
    css_header_background_color character varying(10) NOT NULL,
    title_color character varying(10) NOT NULL,
    css_header_text_color character varying(10) NOT NULL,
    css_header_link_color character varying(10) NOT NULL,
    css_header_link_hover_color character varying(10) NOT NULL,
    css_module_background_color character varying(10) NOT NULL,
    css_module_text_color character varying(10) NOT NULL,
    css_module_link_color character varying(10) NOT NULL,
    css_module_link_hover_color character varying(10) NOT NULL,
    css_module_rounded_corners boolean NOT NULL,
    css_generic_link_color character varying(10) NOT NULL,
    css_generic_link_hover_color character varying(10) NOT NULL,
    css_save_button_background_color character varying(10) NOT NULL,
    css_save_button_background_hover_color character varying(10) NOT NULL,
    css_save_button_text_color character varying(10) NOT NULL,
    css_delete_button_background_color character varying(10) NOT NULL,
    css_delete_button_background_hover_color character varying(10) NOT NULL,
    css_delete_button_text_color character varying(10) NOT NULL,
    css text NOT NULL,
    list_filter_dropdown boolean NOT NULL,
    related_modal_active boolean NOT NULL,
    related_modal_background_color character varying(10) NOT NULL,
    related_modal_rounded_corners boolean NOT NULL,
    logo_color character varying(10) NOT NULL,
    recent_actions_visible boolean NOT NULL,
    favicon character varying(100) NOT NULL,
    related_modal_background_opacity character varying(5) NOT NULL,
    env_name character varying(50) NOT NULL,
    env_visible_in_header boolean NOT NULL,
    env_color character varying(10) NOT NULL,
    env_visible_in_favicon boolean NOT NULL,
    related_modal_close_button_visible boolean NOT NULL,
    language_chooser_active boolean NOT NULL,
    language_chooser_display character varying(10) NOT NULL,
    list_filter_sticky boolean NOT NULL,
    form_pagination_sticky boolean NOT NULL,
    form_submit_sticky boolean NOT NULL,
    css_module_background_selected_color character varying(10) NOT NULL,
    css_module_link_selected_color character varying(10) NOT NULL
);
 )   DROP TABLE public.admin_interface_theme;
       public         heap    postgres    false            ?            1259    17892    admin_interface_theme_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.admin_interface_theme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.admin_interface_theme_id_seq;
       public          postgres    false    225            o           0    0    admin_interface_theme_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.admin_interface_theme_id_seq OWNED BY public.admin_interface_theme.id;
          public          postgres    false    224            ?            1259    17774 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    17772    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    213            p           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    212            ?            1259    17784    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    17782    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    215            q           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    214            ?            1259    17766    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    17764    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    211            r           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    210            ?            1259    17792 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            ?            1259    17802    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    17800    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    219            s           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    218            ?            1259    17790    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    217            t           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    216            ?            1259    17810    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    17808 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    221            u           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    220            ?            1259    17870    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            ?            1259    17868    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    223            v           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    222            ?            1259    17756    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    17754    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    209            w           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    208            ?            1259    17706    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    17704    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            x           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            ?            1259    17935    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            u           2604    17720    Index_autores id    DEFAULT     x   ALTER TABLE ONLY public."Index_autores" ALTER COLUMN id SET DEFAULT nextval('public."Index_autores_id_seq"'::regclass);
 A   ALTER TABLE public."Index_autores" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            v           2604    17728    Index_categorias id    DEFAULT     ~   ALTER TABLE ONLY public."Index_categorias" ALTER COLUMN id SET DEFAULT nextval('public."Index_categorias_id_seq"'::regclass);
 D   ALTER TABLE public."Index_categorias" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            w           2604    17736    Index_libros id    DEFAULT     v   ALTER TABLE ONLY public."Index_libros" ALTER COLUMN id SET DEFAULT nextval('public."Index_libros_id_seq"'::regclass);
 @   ALTER TABLE public."Index_libros" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            ?           2604    17897    admin_interface_theme id    DEFAULT     ?   ALTER TABLE ONLY public.admin_interface_theme ALTER COLUMN id SET DEFAULT nextval('public.admin_interface_theme_id_seq'::regclass);
 G   ALTER TABLE public.admin_interface_theme ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            z           2604    17777    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            {           2604    17787    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            y           2604    17769    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            |           2604    17795    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            }           2604    17805    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            ~           2604    17813    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221                       2604    17873    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            x           2604    17759    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            t           2604    17709    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            N          0    17717    Index_autores 
   TABLE DATA           ?   COPY public."Index_autores" (id, nombre, apellido) FROM stdin;
    public          postgres    false    203   :?       P          0    17725    Index_categorias 
   TABLE DATA           ;   COPY public."Index_categorias" (id, categoria) FROM stdin;
    public          postgres    false    205   ƻ       R          0    17733    Index_libros 
   TABLE DATA           ?   COPY public."Index_libros" (id, titulo, "año", editor, idioma, descripcion, disponibles, precio, imagen, autor_id, categoria_id) FROM stdin;
    public          postgres    false    207   ?       d          0    17894    admin_interface_theme 
   TABLE DATA           L  COPY public.admin_interface_theme (id, name, active, title, title_visible, logo, logo_visible, css_header_background_color, title_color, css_header_text_color, css_header_link_color, css_header_link_hover_color, css_module_background_color, css_module_text_color, css_module_link_color, css_module_link_hover_color, css_module_rounded_corners, css_generic_link_color, css_generic_link_hover_color, css_save_button_background_color, css_save_button_background_hover_color, css_save_button_text_color, css_delete_button_background_color, css_delete_button_background_hover_color, css_delete_button_text_color, css, list_filter_dropdown, related_modal_active, related_modal_background_color, related_modal_rounded_corners, logo_color, recent_actions_visible, favicon, related_modal_background_opacity, env_name, env_visible_in_header, env_color, env_visible_in_favicon, related_modal_close_button_visible, language_chooser_active, language_chooser_display, list_filter_sticky, form_pagination_sticky, form_submit_sticky, css_module_background_selected_color, css_module_link_selected_color) FROM stdin;
    public          postgres    false    225   c?       X          0    17774 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    213    ?       Z          0    17784    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    215   =?       V          0    17766    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    211   Z?       \          0    17792 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    217   ?       ^          0    17802    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    219   ??       `          0    17810    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    221   ??       b          0    17870    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    223   ?       T          0    17756    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    209   ??       L          0    17706    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   ?       e          0    17935    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    226   ??       y           0    0    Index_autores_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Index_autores_id_seq"', 5, true);
          public          postgres    false    202            z           0    0    Index_categorias_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Index_categorias_id_seq"', 3, true);
          public          postgres    false    204            {           0    0    Index_libros_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Index_libros_id_seq"', 5, true);
          public          postgres    false    206            |           0    0    admin_interface_theme_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.admin_interface_theme_id_seq', 1, true);
          public          postgres    false    224            }           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    212            ~           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    214                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
          public          postgres    false    210            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    218            ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    216            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    220            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 15, true);
          public          postgres    false    222            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          postgres    false    208            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 40, true);
          public          postgres    false    200            ?           2606    17722     Index_autores Index_autores_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Index_autores"
    ADD CONSTRAINT "Index_autores_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Index_autores" DROP CONSTRAINT "Index_autores_pkey";
       public            postgres    false    203            ?           2606    17730 &   Index_categorias Index_categorias_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Index_categorias"
    ADD CONSTRAINT "Index_categorias_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Index_categorias" DROP CONSTRAINT "Index_categorias_pkey";
       public            postgres    false    205            ?           2606    17741    Index_libros Index_libros_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Index_libros"
    ADD CONSTRAINT "Index_libros_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Index_libros" DROP CONSTRAINT "Index_libros_pkey";
       public            postgres    false    207            ?           2606    17917 >   admin_interface_theme admin_interface_theme_name_30bda70f_uniq 
   CONSTRAINT     y   ALTER TABLE ONLY public.admin_interface_theme
    ADD CONSTRAINT admin_interface_theme_name_30bda70f_uniq UNIQUE (name);
 h   ALTER TABLE ONLY public.admin_interface_theme DROP CONSTRAINT admin_interface_theme_name_30bda70f_uniq;
       public            postgres    false    225            ?           2606    17902 0   admin_interface_theme admin_interface_theme_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.admin_interface_theme
    ADD CONSTRAINT admin_interface_theme_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.admin_interface_theme DROP CONSTRAINT admin_interface_theme_pkey;
       public            postgres    false    225            ?           2606    17933    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    213            ?           2606    17826 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    215    215            ?           2606    17789 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    215            ?           2606    17779    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    213            ?           2606    17817 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    211    211            ?           2606    17771 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    211            ?           2606    17807 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    219            ?           2606    17841 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    219    219            ?           2606    17797    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    217            ?           2606    17815 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    221            ?           2606    17855 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    221    221            ?           2606    17927     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    217            ?           2606    17879 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    223            ?           2606    17763 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    209    209            ?           2606    17761 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    209            ?           2606    17714 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            ?           2606    17942 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    226            ?           1259    17752    Index_libros_autor_id_fb629c4e    INDEX     _   CREATE INDEX "Index_libros_autor_id_fb629c4e" ON public."Index_libros" USING btree (autor_id);
 4   DROP INDEX public."Index_libros_autor_id_fb629c4e";
       public            postgres    false    207            ?           1259    17753 "   Index_libros_categoria_id_a584e429    INDEX     g   CREATE INDEX "Index_libros_categoria_id_a584e429" ON public."Index_libros" USING btree (categoria_id);
 8   DROP INDEX public."Index_libros_categoria_id_a584e429";
       public            postgres    false    207            ?           1259    17918 (   admin_interface_theme_name_30bda70f_like    INDEX     ~   CREATE INDEX admin_interface_theme_name_30bda70f_like ON public.admin_interface_theme USING btree (name varchar_pattern_ops);
 <   DROP INDEX public.admin_interface_theme_name_30bda70f_like;
       public            postgres    false    225            ?           1259    17934    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    213            ?           1259    17837 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    215            ?           1259    17838 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    215            ?           1259    17823 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    211            ?           1259    17853 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    219            ?           1259    17852 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    219            ?           1259    17867 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    221            ?           1259    17866 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    221            ?           1259    17928     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    217            ?           1259    17890 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    223            ?           1259    17891 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    223            ?           1259    17944 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    226            ?           1259    17943 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    226            ?           2606    17742 ?   Index_libros Index_libros_autor_id_fb629c4e_fk_Index_autores_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Index_libros"
    ADD CONSTRAINT "Index_libros_autor_id_fb629c4e_fk_Index_autores_id" FOREIGN KEY (autor_id) REFERENCES public."Index_autores"(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public."Index_libros" DROP CONSTRAINT "Index_libros_autor_id_fb629c4e_fk_Index_autores_id";
       public          postgres    false    203    2949    207            ?           2606    17747 F   Index_libros Index_libros_categoria_id_a584e429_fk_Index_categorias_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Index_libros"
    ADD CONSTRAINT "Index_libros_categoria_id_a584e429_fk_Index_categorias_id" FOREIGN KEY (categoria_id) REFERENCES public."Index_categorias"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."Index_libros" DROP CONSTRAINT "Index_libros_categoria_id_a584e429_fk_Index_categorias_id";
       public          postgres    false    205    207    2951            ?           2606    17832 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2964    215    211            ?           2606    17827 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2969    213    215            ?           2606    17818 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    209    211    2959            ?           2606    17847 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    219    213    2969            ?           2606    17842 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2977    217    219            ?           2606    17861 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    221    2964    211            ?           2606    17856 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    217    221    2977            ?           2606    17880 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    209    2959    223            ?           2606    17885 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    217    223    2977            N   |   x??;
A ?:9?@?@?m,??&j?a?	&BJoai?lG??{s??|u??{|?.w?.?@??!J????a[??q	i?7Q6\?????-??Ny;?#??N?p{.'%????(?      P   6   x?3?(?O/J?ML?<?9????PY????e??????U???_????? ?-      R   G  x??YM?7=˿??KD?x?8??8?Iv?dcē,Pݔęn?C6??O??|???En?,??'?%?^??Ւ??<??,?ǫWU??ɕ????`?Ʃ?fm*??Ƶ???mk\?su?Z??&??}6??hפ?ĺe?{'????Zm?m?D?+???57?NѨ?^???O?R?:?3u??5??7إ?*-??u??P	??A?v???_??*?J?ڴ+_??/??????CK?z,?,???te?? a|???mHF9?]?U z???͟?۾C?L?ue?V?@???@??z7U??V?????cWc|SU?Ү??b??+c??##??B+o???t??*?jab?i?R?]@???|h4++]??:??[C?̍??%"??r??	J/???????I?}p?<??,????6]?~?;???'?+<*?9?/?ؘ"??4?-$^5??Q?A?	?)բ{q???m%??>?\	'?p???g%o?؅)̱?2K??(?~? *??NV2??V+??R??t?l??΍*??/???m??b ?H]X(????E??=TD?Bq???? ??^	????F?=1??I@?&???
?^a???ت??r?_??kUH????a?Mӂ?z&f?j??Q5??#;?u??J??㍜???Ƈ??{0g4?Z???u??cj?7+#???N?^?h???.?9ݻ???=??? ?}k?:'T&&j??J????+?O=????A?E?H???\T,<?????H????X	Y̷?\{?f???`[??x????,HSX?EN???`??/??6F݁+6>??!B?~d~_3ds?VH?eбM?)??o?RH?tn?.x<ȶ+?8?V?ٙ[AS
_??\&[jW????+?ɀ?<c?????)Ov S?.??)aN!??!??$g??-?D?????%Ӱ)EAx2S?-??SJ\??-?ZB:y)?? X???}1??P(a^??KY?K?eH?Rqx?B,??$??cK?#F?7???3קv6YL?>?|??T?>~"u???y:*I?C?<?????ȹo?<??u???M??=?<ۂԝjt???G???'?cJ[???nr?????^??2?	P<??YZ?4]k?fQ?.?f0.???޽???޽ؽ???4!?? ??є?v??k'D??j?HU????
?Hڪ&?_?S???$?VWt?!j[?ZqQ?u?wX
>F?????9???	??+?V??ǖ-ʹ?k??????[[?Ճ?#?????W???!M?????P!?k_څ??? ?|???m??H_k??l6CZ?+Y?8I^?TJ?6?Բ?T?4?08?2?В?6??H ? ??3<4[???ȍE?\-r?>????K???
???.?N"??Mt?m?y܋??^?w/?-|??s?`?h??ҵ糯 ?ʂ?%uȃ??צ?[??r?7?JT?-L??????2Q1?4?????c??D=GW꼳!?p'Hh?*?;Y??7?????$?ϥW?\yq?"??冎??U0o???:
??????/R=ؙ?Kf???C`?Sg˺N?ɃG?G????"?e?l^?鉟-?b?`?????Sj??+???'?'??????G?.??3????%????O???D?hr??r?@?Xf?"
`3j?+Z??Dj?\?^?G?d???]??ㄴÎt?~????쪽?5??t?3?
_7?sA?.???#[f!?@?4t??z??`Ӟd?s?涩|?l??Թ[?5H???$9?6?c%q?z??=7?1q,3 ?÷??>E(?:-???h:???v?\_-3e(w?????[G??ܽV??5)H?s?{%j@?T?.?Mw?Ri??\ɰ?? 0g?.D}???a??????}Cr?????ſCs(	??Da?:?0OٽD|+?b?88n[&}M]?j???Oyz?]?TK?U?O?z4????9X??ӧz~???? 9?Ԓ?????H?ɩ[??1h??%?n}?|]?tJK?l%P?m??v??$?P?CcK?]?]U????P4??n?K퐧???0J????e?"Z${?ݗ?z??j?`|4ҸC????ѦB?? W?????1~??l_?????;ξn#?8?A?????*f?ͳG??k?=????S?????|?)????Q??p??ާ??.??r?????4e???	???8~?A	jĭ'w?k?!??????'?Þ~H ???Q??????????>??v,?a?f??[?G??????"=V?$??]???.?{k?]:m?>G|^????,???9?u?ǹwx}<???H^@??X?\4h?Pd]1uN?M?	?+ޒZ?.9&4SP?H!????$	?????@/]"[9?r,w?R?z??????w=?{??:????f???v???w1ڍ???id?la??? Wa?	??F,Z?-?ʝt磢iX3?ª?u榜?`?S0??>\?5?YnB}2 c???hR???]zs?Z????#?끺+?Ϲ{?{vƠ-?ǒCf??9??}???wA?`??+C4??Z3Nȇ??Α??yP?f`?ν??{]?AĐ?܌MT???Îs??.i??|?ln????u??8e?L!???x??,??{W_?F??1?m?K?]??D?2P?1??c??????? ? ??1??*M2????????L??C?8o???Z??.?????E??(W?ֺ? 9%?p0?i??H'?c????~.??gź??d????z"y???a?_?????=???% ?)???i!??!???t???(?68w9?Ih??J?]?Q??>???w?(V?k???Zo}?Z??QK??h?<ӄ??k?]?g" ?`y??V?*????=&?\???j*?%z"?`???qF?_&L?cĊ>?Gu5?+?H????*Pa3?Evo?"5?????6?*?:???2??N'??3xy?c\$s?ħ@???م????????3???3k?9?i???\
?-R?78??ú??Z??d??fAD???v?W??q??{ú?1\???(?t>?I:WP?)?.?(???A????g\???(g\?w?N????m'???jь\????N?i?O???$??o??d????#L??>?{???w?{?5??<??|Es??9??9??F#HNڷz=?}>?]?	??β??D?ͯ?l?Q,1|???-?'?n??51??H??^?w&??*E??V?K??w??2?B?@??[O?꽓Ӹ?a?3??;????#n+?Vs???/?حxg????`?:@E8I??N?G??Z??X?O?E!Ŭ??Z?:l???;:??t???? b????E??L?+?;???G2???}?Z??a ?F???A?x?pk?n?@7??؛j?$?HQ3Ʈc?JHH????[??????Ѩs_?h???????޽{?P?!?      d   ?   x?M?=?0?g????8? F??G?B?J??Z?z.V'????X?9??y?.㲽:X????i?????????㑪5?H??H??T???@?:ĨX?d??ݧ?O$2?? ?tuYfrLdE:??F?F??E?n?? ????9?*?7?j)T?n??1??ܸ????ĥB| ??=s      X      x?????? ? ?      Z      x?????? ? ?      V   ?  x?]?Kn? ??p
??
??Z?
YV??9?i????yd?0?4?4?8?9??p?4???{??r???ٶ?;_?y??.%???R"??;????v?4????9?LK??I	I??{?"A?!??J-??d???>?4??t???m??"QO?N*%ܲ?BAS???1<?I8[?K??G5D?Ҫ"(?Ȏ]* ?ޓ?3?h? ??;?????8???p ???6?.MG??a?????zx??Zol??????U??x?S???????'_ֺa?l?2?z???&??X?i?9D???????93hD?J8chD??6C`D??<d??8??^??v*ߊ?K?J???F,2?вNr?o?O?,??`P?N=F????zLտ?P?x̔??_??Ҏ?      \   ?   x?%?]?0??????[׻?-Ay???}???if????????<??gR?7znrE????!ָOv?OpyF???@??ln-t?zQ??]?Çz????w?????Y?uZg??A(?	??L"$?	??l??EAݩG?*~?P???)?f??w|??a??_??2	\??a????qa|?i5?      ^      x?????? ? ?      `      x?????? ? ?      b   w  x?????7?k?SԤ?1$?{;?J?H???.x??DkE*$???0?-\?L?"H?Vɋ?I2??I????C"???Ǐ??f?8???f?4?4ɣ?АG??<U?V???b?/????SYs?0|?dU:||9|&r??OLel?p?|uw?+Q̧?Ժ?b?J?????J?afn?ݏ??u0?d%/??!???r??????F]??j?朒?I?<D?v???f<??pf4hُkolv%?Ʈ?B?????V杛+???DY??5???14?H?<?-???M??[3?b!
??]? f???0?(IS??i?4?+?????U7R?H???,R??????Ჹ??+?????]t?x$]a?rm?????wVy???g???1s????????? ???N	?	LpE?d??.?z*A-?S c>??(Eܑ??<LI?RΣF
~k?wb?GF?֟+??Q?C-{K?P????<?1o?}?}??G?3}??'?INӠ?n}k)?V?7?q}????o&Nݏ?K?#?Rm???NJex??[
?\?9}? ?*?=?`²??Ϲl'??JD??I?oZ`p?ܕ??`J4o??X?????R??ˮT)??_O???₦?$
¤?m?BY?????R?sx?a??t?d????0?LE ?3??eO8;9?~?p????ҫ?M??(??b??E??ɢ0ڔXxk?c]??/?v%?G0q?;ֆ??-??vK? &4?<h?[?'?[S??&|???[y???6+???7?W4/4?L????[?å?*v??yq?uѭ??H=??
?Oب???DL2?%Qزv?_????b???.??)??E)?6M?Ybm??CX??X??B.??b????????9H?@      T   ?   x?M?[
?@??#ƷG???ɸYHv??,?????uT7?1?[???-??<26?? ????-??=M?c2K???&??	?
?Xq?V?w?}???G2???8?%w????l8/??(???Y/nHw?u?|?>?      L   k  x???[r?0E??Ut??CRw?=t?CK?é$?z?qW_?tw?????m?`?}???N6?a	?ߡ@?*??BA?M?oh?A?Bҷ?	wm?.????"??*?"?έ???YI???v??x?DA?I!?=m???t????[z~???x???ub?w?|gP?u??h?;??%??`YPԉUe????Z?@1?Fȉ?\0?L&߻?wv??'?1?p?1T]?m???3d??? ?A?1???%,??HS:?? H_?jI??ʳ=?9?{??D??????/??-5|^??L?M%3Br?*?tp?@?g	?y*@q??L?ƣ??[v?ڟ?)?cg?ɵa??4L?#? ]???#????a???CjS?2???????g15"T?\?? 7??)*/w?????-???v=u??=?igo??xT?R?u?Gƶ}b??e??چ??Ty?q????~?|?-P??!gz(???!?#??B???l??'Dc?{9׃??]?O?????Ւ$7P?y??b?_p??.??D8BB?u??j????_༄?'?`?LJ#4?M ?	8?i?/ER?%)nP$[???f??6?$/3?o]CڬyC#7?,o?+??9?3y?]??C??t??p]??x]ȫ"[?gQ????l??NFV???!?9??????ޏG??Ba???*?ƒW֚????)??Y	F?b?GN???8jU????o?#3?5?V?k?]D?4
??????!y?a?????$ˠZ?ɭ?j?T?L?6?eNS?,-?????KR??R??p5??????{??H??A)P?L???P?FdT:\??0?nt???0???OS|??8??GU?,?r?3?mU?0=Xmc???Rb7??S．Q?TRe5~<?==??^1i      e   _  x???Yr?P ?︊l ????1Q?-+U2	????w?z9K8?g?*?,b9??{?5?u)'?s!?͓?t*l{;???K.&?7I/????N??óU"??E?~?/?0p0?{????G|:?>???~'???2?b}.???sKm????ZJY?x??f??d讌?i#*???fMN`??eˬ??6?u????p?ݫN???????cۡ?uH?fNiža?!5????8<w??~??,???%?
Tz???D?a?
H?giU?Oҽ0f??VU^<?a??E?4aU??!_??9?u`????Y??????+?.o?L>?[/?!F??! ?w@??ϐ,@?g?{>?????!     