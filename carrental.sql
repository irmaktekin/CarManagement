PGDMP     
    
                |            carrentalsystem    14.12    14.12 *    #           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            $           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            %           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            &           1262    16767    carrentalsystem    DATABASE     Z   CREATE DATABASE carrentalsystem WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE carrentalsystem;
                postgres    false            �            1259    16824    book    TABLE     2  CREATE TABLE public.book (
    id integer NOT NULL,
    book_car_id integer,
    book_name character varying,
    book_idno text,
    booking_mpno character varying,
    book_mail character varying,
    book_strt_date date,
    book_fnsh_date date,
    book_prc integer,
    book_case character varying
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16823    book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.book_id_seq;
       public          postgres    false    218            '           0    0    book_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.book_id_seq OWNED BY public.book.id;
          public          postgres    false    217            �            1259    16787    brand    TABLE     b   CREATE TABLE public.brand (
    id integer NOT NULL,
    brand_name character varying NOT NULL
);
    DROP TABLE public.brand;
       public         heap    postgres    false            �            1259    16786    brand_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.brand_id_seq;
       public          postgres    false    212            (           0    0    brand_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.brand_id_seq OWNED BY public.brand.id;
          public          postgres    false    211            �            1259    16810    car    TABLE     �   CREATE TABLE public.car (
    id integer NOT NULL,
    car_model_id integer,
    car_color text,
    car_km integer,
    car_plate character varying
);
    DROP TABLE public.car;
       public         heap    postgres    false            �            1259    16809 
   car_id_seq    SEQUENCE     �   CREATE SEQUENCE public.car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.car_id_seq;
       public          postgres    false    216            )           0    0 
   car_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.car_id_seq OWNED BY public.car.id;
          public          postgres    false    215            �            1259    16796 	   car_model    TABLE     �   CREATE TABLE public.car_model (
    id integer NOT NULL,
    model_brand_id integer,
    model_name character varying NOT NULL,
    model_type character varying NOT NULL,
    model_year text,
    model_fuel text,
    model_gear character varying
);
    DROP TABLE public.car_model;
       public         heap    postgres    false            �            1259    16795    car_model_id_seq    SEQUENCE     �   CREATE SEQUENCE public.car_model_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.car_model_id_seq;
       public          postgres    false    214            *           0    0    car_model_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.car_model_id_seq OWNED BY public.car_model.id;
          public          postgres    false    213            �            1259    16769    user    TABLE     �   CREATE TABLE public."user" (
    id bigint NOT NULL,
    user_name text NOT NULL,
    user_password text NOT NULL,
    user_role text NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    16768    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    210            +           0    0    users_id_seq    SEQUENCE OWNED BY     >   ALTER SEQUENCE public.users_id_seq OWNED BY public."user".id;
          public          postgres    false    209            ~           2604    16827    book id    DEFAULT     b   ALTER TABLE ONLY public.book ALTER COLUMN id SET DEFAULT nextval('public.book_id_seq'::regclass);
 6   ALTER TABLE public.book ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            {           2604    16790    brand id    DEFAULT     d   ALTER TABLE ONLY public.brand ALTER COLUMN id SET DEFAULT nextval('public.brand_id_seq'::regclass);
 7   ALTER TABLE public.brand ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            }           2604    16813    car id    DEFAULT     `   ALTER TABLE ONLY public.car ALTER COLUMN id SET DEFAULT nextval('public.car_id_seq'::regclass);
 5   ALTER TABLE public.car ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            |           2604    16799    car_model id    DEFAULT     l   ALTER TABLE ONLY public.car_model ALTER COLUMN id SET DEFAULT nextval('public.car_model_id_seq'::regclass);
 ;   ALTER TABLE public.car_model ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            z           2604    16837    user id    DEFAULT     e   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210                       0    16824    book 
   TABLE DATA           �   COPY public.book (id, book_car_id, book_name, book_idno, booking_mpno, book_mail, book_strt_date, book_fnsh_date, book_prc, book_case) FROM stdin;
    public          postgres    false    218   �,                 0    16787    brand 
   TABLE DATA           /   COPY public.brand (id, brand_name) FROM stdin;
    public          postgres    false    212   �,                 0    16810    car 
   TABLE DATA           M   COPY public.car (id, car_model_id, car_color, car_km, car_plate) FROM stdin;
    public          postgres    false    216   >-                 0    16796 	   car_model 
   TABLE DATA           s   COPY public.car_model (id, model_brand_id, model_name, model_type, model_year, model_fuel, model_gear) FROM stdin;
    public          postgres    false    214   �-                 0    16769    user 
   TABLE DATA           I   COPY public."user" (id, user_name, user_password, user_role) FROM stdin;
    public          postgres    false    210   �-       ,           0    0    book_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.book_id_seq', 20, true);
          public          postgres    false    217            -           0    0    brand_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.brand_id_seq', 8, true);
          public          postgres    false    211            .           0    0 
   car_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.car_id_seq', 13, true);
          public          postgres    false    215            /           0    0    car_model_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.car_model_id_seq', 2, true);
          public          postgres    false    213            0           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          postgres    false    209            �           2606    16831    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    218            �           2606    16794    brand brand_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.brand DROP CONSTRAINT brand_pkey;
       public            postgres    false    212            �           2606    16803    car_model car_model_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.car_model
    ADD CONSTRAINT car_model_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.car_model DROP CONSTRAINT car_model_pkey;
       public            postgres    false    214            �           2606    16817    car car_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    216            �           2606    16839    user users_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public."user" DROP CONSTRAINT users_pkey;
       public            postgres    false    210            �           2606    16832    book book_book_car_id_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_book_car_id_fkey FOREIGN KEY (book_car_id) REFERENCES public.car(id);
 D   ALTER TABLE ONLY public.book DROP CONSTRAINT book_book_car_id_fkey;
       public          postgres    false    3462    216    218            �           2606    16818    car car_car_model_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_car_model_id_fkey FOREIGN KEY (car_model_id) REFERENCES public.car_model(id);
 C   ALTER TABLE ONLY public.car DROP CONSTRAINT car_car_model_id_fkey;
       public          postgres    false    3460    216    214            �           2606    16804 '   car_model car_model_model_brand_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.car_model
    ADD CONSTRAINT car_model_model_brand_id_fkey FOREIGN KEY (model_brand_id) REFERENCES public.brand(id);
 Q   ALTER TABLE ONLY public.car_model DROP CONSTRAINT car_model_model_brand_id_fkey;
       public          postgres    false    212    3458    214                   x������ � �         >   x�3�t�L,�2��/H���I-.Qp*J�K�2�t�/Ja.CN�Ԣ�Ԕ�b# ������ �]�         3   x�3�4�t�	u�460��qqUpL�2�4��H�ۑ+F��� &	�         M   x�3�4���OI�Q0�`WG?N##Nw�`O?WN_G�PW.CNC�JC@(5�t�tv��t������ Y�1            x�3�LL����4426�0�b���� O��     