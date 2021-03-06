PGDMP         0                 v            aspl20_development    9.6.3    10.1 /    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16500    aspl20_development    DATABASE     �   CREATE DATABASE aspl20_development WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 "   DROP DATABASE aspl20_development;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16530    activite_aquatiques    TABLE     f  CREATE TABLE activite_aquatiques (
    id bigint NOT NULL,
    nom character varying,
    jour character varying,
    debut character varying,
    fin character varying,
    equipement_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    age_group character varying,
    complet boolean
);
 '   DROP TABLE public.activite_aquatiques;
       public         postgres    false    3            �            1259    16528    activite_aquatiques_id_seq    SEQUENCE     |   CREATE SEQUENCE activite_aquatiques_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.activite_aquatiques_id_seq;
       public       postgres    false    3    190            �           0    0    activite_aquatiques_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE activite_aquatiques_id_seq OWNED BY activite_aquatiques.id;
            public       postgres    false    189            �            1259    16509    ar_internal_metadata    TABLE     �   CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         postgres    false    3            �            1259    16519    equipements    TABLE     w  CREATE TABLE equipements (
    id bigint NOT NULL,
    latitude double precision,
    longitude double precision,
    name character varying,
    adresse character varying,
    cp character varying,
    ville character varying,
    type_equipement character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.equipements;
       public         postgres    false    3            �            1259    16517    equipements_id_seq    SEQUENCE     t   CREATE SEQUENCE equipements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.equipements_id_seq;
       public       postgres    false    188    3            �           0    0    equipements_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE equipements_id_seq OWNED BY equipements.id;
            public       postgres    false    187            �            1259    16501    schema_migrations    TABLE     K   CREATE TABLE schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         postgres    false    3            �            1259    16576    transportations    TABLE     �   CREATE TABLE transportations (
    id bigint NOT NULL,
    equipement_id bigint,
    transport_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 #   DROP TABLE public.transportations;
       public         postgres    false    3            �            1259    16574    transportations_id_seq    SEQUENCE     x   CREATE SEQUENCE transportations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.transportations_id_seq;
       public       postgres    false    194    3            �           0    0    transportations_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE transportations_id_seq OWNED BY transportations.id;
            public       postgres    false    193            �            1259    16547 
   transports    TABLE     �   CREATE TABLE transports (
    id bigint NOT NULL,
    type_transport character varying,
    ligne character varying,
    arret character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.transports;
       public         postgres    false    3            �            1259    16545    transports_id_seq    SEQUENCE     s   CREATE SEQUENCE transports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.transports_id_seq;
       public       postgres    false    192    3            �           0    0    transports_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE transports_id_seq OWNED BY transports.id;
            public       postgres    false    191            �           2604    16533    activite_aquatiques id    DEFAULT     r   ALTER TABLE ONLY activite_aquatiques ALTER COLUMN id SET DEFAULT nextval('activite_aquatiques_id_seq'::regclass);
 E   ALTER TABLE public.activite_aquatiques ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189    190            �           2604    16522    equipements id    DEFAULT     b   ALTER TABLE ONLY equipements ALTER COLUMN id SET DEFAULT nextval('equipements_id_seq'::regclass);
 =   ALTER TABLE public.equipements ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187    188            �           2604    16579    transportations id    DEFAULT     j   ALTER TABLE ONLY transportations ALTER COLUMN id SET DEFAULT nextval('transportations_id_seq'::regclass);
 A   ALTER TABLE public.transportations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    193    194            �           2604    16550    transports id    DEFAULT     `   ALTER TABLE ONLY transports ALTER COLUMN id SET DEFAULT nextval('transports_id_seq'::regclass);
 <   ALTER TABLE public.transports ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    192    191    192            �          0    16530    activite_aquatiques 
   TABLE DATA               |   COPY activite_aquatiques (id, nom, jour, debut, fin, equipement_id, created_at, updated_at, age_group, complet) FROM stdin;
    public       postgres    false    190   �5       |          0    16509    ar_internal_metadata 
   TABLE DATA               K   COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public       postgres    false    186   .7       ~          0    16519    equipements 
   TABLE DATA               z   COPY equipements (id, latitude, longitude, name, adresse, cp, ville, type_equipement, created_at, updated_at) FROM stdin;
    public       postgres    false    188   }7       {          0    16501    schema_migrations 
   TABLE DATA               -   COPY schema_migrations (version) FROM stdin;
    public       postgres    false    185   �8       �          0    16576    transportations 
   TABLE DATA               [   COPY transportations (id, equipement_id, transport_id, created_at, updated_at) FROM stdin;
    public       postgres    false    194   �8       �          0    16547 
   transports 
   TABLE DATA               W   COPY transports (id, type_transport, ligne, arret, created_at, updated_at) FROM stdin;
    public       postgres    false    192   �9       �           0    0    activite_aquatiques_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('activite_aquatiques_id_seq', 8, true);
            public       postgres    false    189            �           0    0    equipements_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('equipements_id_seq', 3, true);
            public       postgres    false    187            �           0    0    transportations_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('transportations_id_seq', 12, true);
            public       postgres    false    193            �           0    0    transports_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('transports_id_seq', 9, true);
            public       postgres    false    191            �           2606    16538 ,   activite_aquatiques activite_aquatiques_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY activite_aquatiques
    ADD CONSTRAINT activite_aquatiques_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.activite_aquatiques DROP CONSTRAINT activite_aquatiques_pkey;
       public         postgres    false    190            �           2606    16516 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public         postgres    false    186            �           2606    16527    equipements equipements_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY equipements
    ADD CONSTRAINT equipements_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.equipements DROP CONSTRAINT equipements_pkey;
       public         postgres    false    188            �           2606    16508 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public         postgres    false    185                       2606    16581 $   transportations transportations_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY transportations
    ADD CONSTRAINT transportations_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.transportations DROP CONSTRAINT transportations_pkey;
       public         postgres    false    194            �           2606    16555    transports transports_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY transports
    ADD CONSTRAINT transports_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.transports DROP CONSTRAINT transports_pkey;
       public         postgres    false    192            �           1259    16544 *   index_activite_aquatiques_on_equipement_id    INDEX     l   CREATE INDEX index_activite_aquatiques_on_equipement_id ON activite_aquatiques USING btree (equipement_id);
 >   DROP INDEX public.index_activite_aquatiques_on_equipement_id;
       public         postgres    false    190            �           1259    16592 &   index_transportations_on_equipement_id    INDEX     d   CREATE INDEX index_transportations_on_equipement_id ON transportations USING btree (equipement_id);
 :   DROP INDEX public.index_transportations_on_equipement_id;
       public         postgres    false    194                        1259    16593 %   index_transportations_on_transport_id    INDEX     b   CREATE INDEX index_transportations_on_transport_id ON transportations USING btree (transport_id);
 9   DROP INDEX public.index_transportations_on_transport_id;
       public         postgres    false    194                       2606    16587 #   transportations fk_rails_2cee197334    FK CONSTRAINT     ~   ALTER TABLE ONLY transportations
    ADD CONSTRAINT fk_rails_2cee197334 FOREIGN KEY (transport_id) REFERENCES transports(id);
 M   ALTER TABLE ONLY public.transportations DROP CONSTRAINT fk_rails_2cee197334;
       public       postgres    false    192    194    2046                       2606    16539 '   activite_aquatiques fk_rails_30af2a11eb    FK CONSTRAINT     �   ALTER TABLE ONLY activite_aquatiques
    ADD CONSTRAINT fk_rails_30af2a11eb FOREIGN KEY (equipement_id) REFERENCES equipements(id);
 Q   ALTER TABLE ONLY public.activite_aquatiques DROP CONSTRAINT fk_rails_30af2a11eb;
       public       postgres    false    188    190    2041                       2606    16582 #   transportations fk_rails_6f522fdbe7    FK CONSTRAINT     �   ALTER TABLE ONLY transportations
    ADD CONSTRAINT fk_rails_6f522fdbe7 FOREIGN KEY (equipement_id) REFERENCES equipements(id);
 M   ALTER TABLE ONLY public.transportations DROP CONSTRAINT fk_rails_6f522fdbe7;
       public       postgres    false    188    194    2041            �   /  x�}��N�@E��W�����>�H%�E	�v�߳�H�b�4�\�9�@���p���~��Ïy���`�0�j0l 7�jℜ�Y%�Q�	i"��BJ�;����h�"�Ђ�2�쬏�&�Oͱ|WС��(�P�f\EaZ.pP�}��͂�n�����	�L��a��ފ�Pɕ��۱�w�8C�A�$V#cKE�����J���l�������ݎ��K�e3',2�����P]X�M��%��Eb���Ȟ0ފ26��/m�;"��^��!�U>�F�ɯ���?���q      |   ?   x�K�+�,���M�+�LI-K��/ ��-tuL-��-��,��M-�Hq��qqq �0f      ~   �   x����N�0�s�y�F���inLp��$�\�͈h���u<=ct�����%��A�dSh��-!��;vԪ���a;�b��2̪�J�L����c9L�Q�Nm��T�)u[Q� 5b)�h9�N��TF�����knu�q.լ�"�(�g���/!eG9�eHL���gb}�4��>/�t��2_����e��y����U�o��k�2����P��"ѵ0�B�d�G��Vk�	ӈq	      {   I   x�U͹�0C�^���%����� �H8'��T�"�b,��<���Q5A�{y�&�v�]��?��      �   �   x�}��q1ߋ(��P<���؏�"�->�ā�T0ނ7䥖!)`�!���
x��h��wm>YemzB>����W�On�>E��uA��S�֚����U�F�����hyA��=��Lt���x@T]m��*�m�wETM]{qX����R�}Ye�p@4�뭈p_�h�S�E�8ZA+��S6�9��0���g      �     x���Mj�0FךS���GK����.�I�(�)�H9G.V�R�F�����Es9�Ws�>�I�l��� H��4V�%���Z9Wc�m��(���<%��d��8�C������Yf����0�fi�Lh#����ԋВ���z�]����ꨃҁ��^���Kʧq�C~Xfc��F`�������8�t�7!�l":eZ��d#�߸Ds��Y����[~�H��/�>����Q���F=	&Ϧ� �*Ģ������M�7ް��     