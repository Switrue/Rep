PGDMP     /                    |            championship2024    15.2    15.2 J    f           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            g           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            h           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            i           1262    25846    championship2024    DATABASE     �   CREATE DATABASE championship2024 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
     DROP DATABASE championship2024;
                postgres    false            j           0    0    DATABASE championship2024    ACL     }   REVOKE ALL ON DATABASE championship2024 FROM postgres;
GRANT ALL ON DATABASE championship2024 TO postgres WITH GRANT OPTION;
                   postgres    false    3433            �            1259    25876 	   diagnoses    TABLE     o   CREATE TABLE public.diagnoses (
    diagnosis_id integer NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.diagnoses;
       public         heap    postgres    false            �            1259    25875    diagnoses_diagnosis_id_seq    SEQUENCE     �   ALTER TABLE public.diagnoses ALTER COLUMN diagnosis_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.diagnoses_diagnosis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    25910 	   employees    TABLE     +  CREATE TABLE public.employees (
    "employee_id " integer NOT NULL,
    name character varying(100) NOT NULL,
    surname character varying(100) NOT NULL,
    patronomic character varying(100) NOT NULL,
    position_id integer NOT NULL,
    salary money NOT NULL,
    gender_id integer NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    25909    employees_employee_id _seq    SEQUENCE     �   ALTER TABLE public.employees ALTER COLUMN "employee_id " ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."employees_employee_id _seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    25946    event_types    TABLE     r   CREATE TABLE public.event_types (
    event_type_id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.event_types;
       public         heap    postgres    false            �            1259    25945    event_types_event_type_id_seq    SEQUENCE     �   ALTER TABLE public.event_types ALTER COLUMN event_type_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.event_types_event_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            �            1259    25862    genders    TABLE     i   CREATE TABLE public.genders (
    gender_id integer NOT NULL,
    name character varying(30) NOT NULL
);
    DROP TABLE public.genders;
       public         heap    postgres    false            �            1259    25861    genders_gender_id_seq    SEQUENCE     �   ALTER TABLE public.genders ALTER COLUMN gender_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.genders_gender_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    26003 "   hospitalizations_in_the_last_month    TABLE     �   CREATE TABLE public.hospitalizations_in_the_last_month (
    hitlm_id integer NOT NULL,
    date_of_hospitalization date NOT NULL,
    patient_id integer NOT NULL,
    diagnosis_id integer NOT NULL
);
 6   DROP TABLE public.hospitalizations_in_the_last_month;
       public         heap    postgres    false            �            1259    26002 /   hospitalizations_in_the_last_month_hitlm_id_seq    SEQUENCE       ALTER TABLE public.hospitalizations_in_the_last_month ALTER COLUMN hitlm_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.hospitalizations_in_the_last_month_hitlm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233            �            1259    25868    patients    TABLE     �  CREATE TABLE public.patients (
    patient_id integer NOT NULL,
    name character varying(100) NOT NULL,
    surname character varying(100) NOT NULL,
    patrynomic character varying(100) NOT NULL,
    passport character varying(12) NOT NULL,
    date_of_birth date NOT NULL,
    gender_id integer NOT NULL,
    address character varying(150) NOT NULL,
    phone character varying(25),
    email character varying(100),
    number_medical_card integer NOT NULL,
    date_of_issue_of_medical_card date NOT NULL,
    date_of_last_request date NOT NULL,
    date_of_next_visit date,
    insurance_police_number integer NOT NULL,
    insurance_police_end_date date NOT NULL,
    diagnosis_id integer NOT NULL,
    disease_history text NOT NULL
);
    DROP TABLE public.patients;
       public         heap    postgres    false            �            1259    25867    patients_patient_id_seq    SEQUENCE     �   ALTER TABLE public.patients ALTER COLUMN patient_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.patients_patient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    25916 	   positions    TABLE     n   CREATE TABLE public.positions (
    position_id integer NOT NULL,
    name character varying(200) NOT NULL
);
    DROP TABLE public.positions;
       public         heap    postgres    false            �            1259    25915    positions_position_id_seq    SEQUENCE     �   ALTER TABLE public.positions ALTER COLUMN position_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.positions_position_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227            �            1259    25970    roles    TABLE     f   CREATE TABLE public.roles (
    role_id integer NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    25969    roles_role_id_seq    SEQUENCE     �   ALTER TABLE public.roles ALTER COLUMN role_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.roles_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            �            1259    25902    treatment_diagnostic_measures    TABLE     U  CREATE TABLE public.treatment_diagnostic_measures (
    tdm_id integer NOT NULL,
    patient_id integer NOT NULL,
    event_date date NOT NULL,
    employee_id integer NOT NULL,
    event_type_id integer NOT NULL,
    event_title character varying(100) NOT NULL,
    event_results character varying(200) NOT NULL,
    recommendation text
);
 1   DROP TABLE public.treatment_diagnostic_measures;
       public         heap    postgres    false            �            1259    25901 (   treatment_diagnostic_measures_tdm_id_seq    SEQUENCE     �   ALTER TABLE public.treatment_diagnostic_measures ALTER COLUMN tdm_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.treatment_diagnostic_measures_tdm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    25848    users    TABLE     �   CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(100) NOT NULL,
    photo text,
    login character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    25847    users_user_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN user_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            W          0    25876 	   diagnoses 
   TABLE DATA           7   COPY public.diagnoses (diagnosis_id, name) FROM stdin;
    public          postgres    false    221   �^       [          0    25910 	   employees 
   TABLE DATA           n   COPY public.employees ("employee_id ", name, surname, patronomic, position_id, salary, gender_id) FROM stdin;
    public          postgres    false    225   �_       _          0    25946    event_types 
   TABLE DATA           :   COPY public.event_types (event_type_id, name) FROM stdin;
    public          postgres    false    229   b`       S          0    25862    genders 
   TABLE DATA           2   COPY public.genders (gender_id, name) FROM stdin;
    public          postgres    false    217   a       c          0    26003 "   hospitalizations_in_the_last_month 
   TABLE DATA           y   COPY public.hospitalizations_in_the_last_month (hitlm_id, date_of_hospitalization, patient_id, diagnosis_id) FROM stdin;
    public          postgres    false    233   Ma       U          0    25868    patients 
   TABLE DATA           5  COPY public.patients (patient_id, name, surname, patrynomic, passport, date_of_birth, gender_id, address, phone, email, number_medical_card, date_of_issue_of_medical_card, date_of_last_request, date_of_next_visit, insurance_police_number, insurance_police_end_date, diagnosis_id, disease_history) FROM stdin;
    public          postgres    false    219   �a       ]          0    25916 	   positions 
   TABLE DATA           6   COPY public.positions (position_id, name) FROM stdin;
    public          postgres    false    227   �c       a          0    25970    roles 
   TABLE DATA           .   COPY public.roles (role_id, name) FROM stdin;
    public          postgres    false    231   d       Y          0    25902    treatment_diagnostic_measures 
   TABLE DATA           �   COPY public.treatment_diagnostic_measures (tdm_id, patient_id, event_date, employee_id, event_type_id, event_title, event_results, recommendation) FROM stdin;
    public          postgres    false    223   kd       Q          0    25848    users 
   TABLE DATA           O   COPY public.users (user_id, name, photo, login, password, role_id) FROM stdin;
    public          postgres    false    215   #e       k           0    0    diagnoses_diagnosis_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.diagnoses_diagnosis_id_seq', 8, true);
          public          postgres    false    220            l           0    0    employees_employee_id _seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."employees_employee_id _seq"', 6, true);
          public          postgres    false    224            m           0    0    event_types_event_type_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.event_types_event_type_id_seq', 7, true);
          public          postgres    false    228            n           0    0    genders_gender_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.genders_gender_id_seq', 2, true);
          public          postgres    false    216            o           0    0 /   hospitalizations_in_the_last_month_hitlm_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.hospitalizations_in_the_last_month_hitlm_id_seq', 5, true);
          public          postgres    false    232            p           0    0    patients_patient_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.patients_patient_id_seq', 7, true);
          public          postgres    false    218            q           0    0    positions_position_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.positions_position_id_seq', 7, true);
          public          postgres    false    226            r           0    0    roles_role_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.roles_role_id_seq', 2, true);
          public          postgres    false    230            s           0    0 (   treatment_diagnostic_measures_tdm_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.treatment_diagnostic_measures_tdm_id_seq', 5, true);
          public          postgres    false    222            t           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 27, true);
          public          postgres    false    214            �           2606    25880    diagnoses diagnoses_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.diagnoses
    ADD CONSTRAINT diagnoses_pkey PRIMARY KEY (diagnosis_id);
 B   ALTER TABLE ONLY public.diagnoses DROP CONSTRAINT diagnoses_pkey;
       public            postgres    false    221            �           2606    25884    diagnoses diagnosis_name 
   CONSTRAINT     b   ALTER TABLE ONLY public.diagnoses
    ADD CONSTRAINT diagnosis_name UNIQUE (name) INCLUDE (name);
 B   ALTER TABLE ONLY public.diagnoses DROP CONSTRAINT diagnosis_name;
       public            postgres    false    221            �           2606    25914    employees employees_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY ("employee_id ");
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    225            �           2606    25952    event_types event_type_name 
   CONSTRAINT     e   ALTER TABLE ONLY public.event_types
    ADD CONSTRAINT event_type_name UNIQUE (name) INCLUDE (name);
 E   ALTER TABLE ONLY public.event_types DROP CONSTRAINT event_type_name;
       public            postgres    false    229            �           2606    25950    event_types event_types_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.event_types
    ADD CONSTRAINT event_types_pkey PRIMARY KEY (event_type_id);
 F   ALTER TABLE ONLY public.event_types DROP CONSTRAINT event_types_pkey;
       public            postgres    false    229            �           2606    25882    genders gender_name 
   CONSTRAINT     ]   ALTER TABLE ONLY public.genders
    ADD CONSTRAINT gender_name UNIQUE (name) INCLUDE (name);
 =   ALTER TABLE ONLY public.genders DROP CONSTRAINT gender_name;
       public            postgres    false    217            �           2606    25866    genders genders_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.genders
    ADD CONSTRAINT genders_pkey PRIMARY KEY (gender_id);
 >   ALTER TABLE ONLY public.genders DROP CONSTRAINT genders_pkey;
       public            postgres    false    217            �           2606    26007 J   hospitalizations_in_the_last_month hospitalizations_in_the_last_month_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.hospitalizations_in_the_last_month
    ADD CONSTRAINT hospitalizations_in_the_last_month_pkey PRIMARY KEY (hitlm_id);
 t   ALTER TABLE ONLY public.hospitalizations_in_the_last_month DROP CONSTRAINT hospitalizations_in_the_last_month_pkey;
       public            postgres    false    233            �           2606    25900     patients insurance_police_number 
   CONSTRAINT     �   ALTER TABLE ONLY public.patients
    ADD CONSTRAINT insurance_police_number UNIQUE (insurance_police_number) INCLUDE (insurance_police_number);
 J   ALTER TABLE ONLY public.patients DROP CONSTRAINT insurance_police_number;
       public            postgres    false    219            �           2606    25990    users login 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT login UNIQUE (login) INCLUDE (login);
 5   ALTER TABLE ONLY public.users DROP CONSTRAINT login;
       public            postgres    false    215            �           2606    25898    patients number_medical_card 
   CONSTRAINT     �   ALTER TABLE ONLY public.patients
    ADD CONSTRAINT number_medical_card UNIQUE (number_medical_card) INCLUDE (number_medical_card);
 F   ALTER TABLE ONLY public.patients DROP CONSTRAINT number_medical_card;
       public            postgres    false    219            �           2606    25896    patients passport 
   CONSTRAINT     c   ALTER TABLE ONLY public.patients
    ADD CONSTRAINT passport UNIQUE (passport) INCLUDE (passport);
 ;   ALTER TABLE ONLY public.patients DROP CONSTRAINT passport;
       public            postgres    false    219            �           2606    25874    patients patients_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pkey PRIMARY KEY (patient_id);
 @   ALTER TABLE ONLY public.patients DROP CONSTRAINT patients_pkey;
       public            postgres    false    219            �           2606    25922    positions position_name 
   CONSTRAINT     a   ALTER TABLE ONLY public.positions
    ADD CONSTRAINT position_name UNIQUE (name) INCLUDE (name);
 A   ALTER TABLE ONLY public.positions DROP CONSTRAINT position_name;
       public            postgres    false    227            �           2606    25920    positions positions_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.positions
    ADD CONSTRAINT positions_pkey PRIMARY KEY (position_id);
 B   ALTER TABLE ONLY public.positions DROP CONSTRAINT positions_pkey;
       public            postgres    false    227            �           2606    25976    roles role_name 
   CONSTRAINT     Y   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT role_name UNIQUE (name) INCLUDE (name);
 9   ALTER TABLE ONLY public.roles DROP CONSTRAINT role_name;
       public            postgres    false    231            �           2606    25974    roles roles_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    231            �           2606    25908 @   treatment_diagnostic_measures treatment_diagnostic_measures_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.treatment_diagnostic_measures
    ADD CONSTRAINT treatment_diagnostic_measures_pkey PRIMARY KEY (tdm_id);
 j   ALTER TABLE ONLY public.treatment_diagnostic_measures DROP CONSTRAINT treatment_diagnostic_measures_pkey;
       public            postgres    false    223            �           2606    25854    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            �           2606    25890    patients diagnosis_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.patients
    ADD CONSTRAINT diagnosis_id FOREIGN KEY (diagnosis_id) REFERENCES public.diagnoses(diagnosis_id) NOT VALID;
 ?   ALTER TABLE ONLY public.patients DROP CONSTRAINT diagnosis_id;
       public          postgres    false    219    221    3235            �           2606    26013 /   hospitalizations_in_the_last_month diagnosis_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.hospitalizations_in_the_last_month
    ADD CONSTRAINT diagnosis_id FOREIGN KEY (diagnosis_id) REFERENCES public.diagnoses(diagnosis_id);
 Y   ALTER TABLE ONLY public.hospitalizations_in_the_last_month DROP CONSTRAINT diagnosis_id;
       public          postgres    false    3235    221    233            �           2606    25954 )   treatment_diagnostic_measures employee_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.treatment_diagnostic_measures
    ADD CONSTRAINT employee_id FOREIGN KEY (employee_id) REFERENCES public.employees("employee_id ") NOT VALID;
 S   ALTER TABLE ONLY public.treatment_diagnostic_measures DROP CONSTRAINT employee_id;
       public          postgres    false    223    225    3241            �           2606    25964 +   treatment_diagnostic_measures event_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.treatment_diagnostic_measures
    ADD CONSTRAINT event_type_id FOREIGN KEY (event_type_id) REFERENCES public.event_types(event_type_id) NOT VALID;
 U   ALTER TABLE ONLY public.treatment_diagnostic_measures DROP CONSTRAINT event_type_id;
       public          postgres    false    229    3249    223            �           2606    25885    patients gender_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.patients
    ADD CONSTRAINT gender_id FOREIGN KEY (gender_id) REFERENCES public.genders(gender_id) NOT VALID;
 <   ALTER TABLE ONLY public.patients DROP CONSTRAINT gender_id;
       public          postgres    false    3225    217    219            �           2606    25928    employees gender_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT gender_id FOREIGN KEY (gender_id) REFERENCES public.genders(gender_id) NOT VALID;
 =   ALTER TABLE ONLY public.employees DROP CONSTRAINT gender_id;
       public          postgres    false    3225    225    217            �           2606    25959 (   treatment_diagnostic_measures patient_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.treatment_diagnostic_measures
    ADD CONSTRAINT patient_id FOREIGN KEY (patient_id) REFERENCES public.patients(patient_id) NOT VALID;
 R   ALTER TABLE ONLY public.treatment_diagnostic_measures DROP CONSTRAINT patient_id;
       public          postgres    false    223    219    3233            �           2606    26008 -   hospitalizations_in_the_last_month patient_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.hospitalizations_in_the_last_month
    ADD CONSTRAINT patient_id FOREIGN KEY (patient_id) REFERENCES public.patients(patient_id);
 W   ALTER TABLE ONLY public.hospitalizations_in_the_last_month DROP CONSTRAINT patient_id;
       public          postgres    false    233    219    3233            �           2606    25923    employees position_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT position_id FOREIGN KEY (position_id) REFERENCES public.positions(position_id) NOT VALID;
 ?   ALTER TABLE ONLY public.employees DROP CONSTRAINT position_id;
       public          postgres    false    227    225    3245            �           2606    25991    users role_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.users
    ADD CONSTRAINT role_id FOREIGN KEY (role_id) REFERENCES public.roles(role_id) NOT VALID;
 7   ALTER TABLE ONLY public.users DROP CONSTRAINT role_id;
       public          postgres    false    3253    231    215            W   �   x�mO9�@�ׯ���y�I�H�Q��@A��"�,Y�0����,�c�ayhp�J�22أE�j�268h��Vר��uGکM�2ͩs2�<�7u[T	�Ã6Ϥ'qӦ�>"��+�ܹ������fh���y��HZ����ա�������Q�r "?��>      [   �   x�]�M
�0��/�� "Ij�����t#(n�wᾨ����	&7r�Z���7����
8"�C�E����ڀ܍Ċ��ֺ�u�+F�R:r<�
�������SR�h$�?�ڂ5	7��*��xq�"�̸?�X�}�PlPk
6$d8	�p�����o..�"���#ocA�U��n"��:q��-��a �S�L���� =���      _   �   x�]N;�0��S�H�/�a�2� �0 ��nZ"���+<߈g`b�b���4���j�5�?� �,�d�"F$�	�f��椐I6V�O
2������dp�V�y�K�PY���#�����*�ɋ���!��m��G��x�`�iG:2��+�����f""oQ��      S   ,   x�3�0�b�m�/츰��.#��.l���b'T F��� �t�      c   ?   x�U��� ��]/F��$)���
��l@�2O�@!�?�ㅘ;���A�n"�C}=F#9���      U   �  x�}�AnAE�=��=�5�U�v��de�XH� 	�"R,�E%1�X�a�!s���'��B�%uM�����ȵ,ҡ4r/#W(铬�32�V��JG���Ou�=��lC�.�㍯�P��td��;�O��YGV>��c��{e&��:?"���d�ͻ����!��ø�(̩|��z��IK.�ZK�E���.+.=��ȅ|�K�˼`�b:J���s#3 �ҥ�^�d���P����L������*K
���U�'80ŵT����1�c�z��Jn�~+72-��6u���M�]����}n=?�f'Vv׳☧���9_��yV�J	_}I�#��;����t��-�	�3�W�&w�dZ�ǅZe�Q��\�GwǠE�4�EW�I'�0���a�����G<y��.�m�a�"�`}���L.��f���J���w/d�p#�9�,DUXr��ʮCpOC�H��o2�k/�߹[�x�!>�yoT�_!N��      ]   x   x���	�PE��LV��yIq�nE��ix$`�v�d��9�4nLd�Ղ�Y'_o��ڀ��Ƌ��3��7�%�#]��%�F��V�;��@IV{�>����~����N�      a   <   x�3�0��mv\�za��&.#�.l��(�����.6 4]�w��+F��� ;�      Y   �   x��PK
�0\'���4��=L��KAܹ�
AZ`�0�FN���d�1�f�SAy�����U�c�5�q�`�)nH��B:�2�̵W�����b��,�O��ň3z�kqB�e3���X��ce�cP7�}G��d�-s�����P7���@<V����[��h�e���      Q   n   x�3�0��v\�}a7�gnbzjq��$V�e�s&��B#.#3��}v_�GR{a
Phׅzy霥ũE�PҐ�Ȝ���B����Wk%�b���� 'm:�     