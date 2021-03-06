toc.dat                                                                                             0000600 0004000 0002000 00000043066 13762703665 0014467 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           x            BFFL    12.4    13.0 =    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         C           1262    16401    BFFL    DATABASE     [   CREATE DATABASE "BFFL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE "BFFL";
             	   bffladmin    false                     2615    16665    bffl    SCHEMA        CREATE SCHEMA bffl;
    DROP SCHEMA bffl;
             	   bffladmin    false         D           0    0    SCHEMA bffl    ACL     c   REVOKE ALL ON SCHEMA bffl FROM bffladmin;
GRANT ALL ON SCHEMA bffl TO bffladmin WITH GRANT OPTION;
                	   bffladmin    false    8         ?            1259    16415 	   app_group    TABLE     ~   CREATE TABLE bffl.app_group (
    "ID" integer NOT NULL,
    "Name" character varying(60) NOT NULL,
    "Max_Size" integer
);
    DROP TABLE bffl.app_group;
       bffl         heap 	   bffladmin    false    8         E           0    0    TABLE app_group    ACL     ?   REVOKE ALL ON TABLE bffl.app_group FROM bffladmin;
GRANT ALL ON TABLE bffl.app_group TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.app_group TO PUBLIC;
          bffl       	   bffladmin    false    204         ?            1259    16435    app_user    TABLE     ?   CREATE TABLE bffl.app_user (
    "EMail" character varying(80) NOT NULL,
    "FName" character varying(30) NOT NULL,
    "SName" character varying(50) NOT NULL,
    "PW" character varying(256) NOT NULL
);
    DROP TABLE bffl.app_user;
       bffl         heap 	   bffladmin    false    8         F           0    0    TABLE app_user    ACL     ?   REVOKE ALL ON TABLE bffl.app_user FROM bffladmin;
GRANT ALL ON TABLE bffl.app_user TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.app_user TO PUBLIC;
          bffl       	   bffladmin    false    206         ?            1259    16572    available_protocolls    TABLE     ?   CREATE TABLE bffl.available_protocolls (
    "Protocoll_Name" public."Protocoll" NOT NULL,
    "Timestamp" timestamp with time zone NOT NULL,
    "TargetURL_Name" character varying(300) NOT NULL
);
 &   DROP TABLE bffl.available_protocolls;
       bffl         heap 	   bffladmin    false    8         G           0    0    TABLE available_protocolls    ACL     ?   REVOKE ALL ON TABLE bffl.available_protocolls FROM bffladmin;
GRANT ALL ON TABLE bffl.available_protocolls TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.available_protocolls TO PUBLIC;
          bffl       	   bffladmin    false    210         ?            1259    16562 
   protocolls    TABLE     ?   CREATE TABLE bffl.protocolls (
    "Name" public."Protocoll" NOT NULL,
    "Security" public."Security",
    "Version" character varying(20)
);
    DROP TABLE bffl.protocolls;
       bffl         heap 	   bffladmin    false    8         H           0    0    TABLE protocolls    ACL     ?   REVOKE ALL ON TABLE bffl.protocolls FROM bffladmin;
GRANT ALL ON TABLE bffl.protocolls TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.protocolls TO PUBLIC;
          bffl       	   bffladmin    false    208         ?            1259    16410 	   short_url    TABLE     ?   CREATE TABLE bffl.short_url (
    "Name" character varying(75) NOT NULL,
    "Group_ID" integer NOT NULL,
    "Scope" integer,
    "Custom_Suffix" character varying(15) NOT NULL,
    "Update_Flag" boolean NOT NULL,
    "Delet_Flag" boolean NOT NULL
);
    DROP TABLE bffl.short_url;
       bffl         heap 	   bffladmin    false    8         I           0    0    TABLE short_url    ACL     ?   REVOKE ALL ON TABLE bffl.short_url FROM bffladmin;
GRANT ALL ON TABLE bffl.short_url TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.short_url TO PUBLIC;
          bffl       	   bffladmin    false    203         ?            1259    16618    tag    TABLE     ?   CREATE TABLE bffl.tag (
    "Name" character varying(30) NOT NULL,
    "Description" character varying(75),
    "Color" character varying(6)
);
    DROP TABLE bffl.tag;
       bffl         heap 	   bffladmin    false    8         J           0    0 	   TABLE tag    ACL     ?   REVOKE ALL ON TABLE bffl.tag FROM bffladmin;
GRANT ALL ON TABLE bffl.tag TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.tag TO PUBLIC;
          bffl       	   bffladmin    false    212         ?            1259    16567 
   target_url    TABLE     ?   CREATE TABLE bffl.target_url (
    "Name" character varying(300) NOT NULL,
    "Owner" character varying(60),
    "Type" public."Web_Resource_Type" NOT NULL
);
    DROP TABLE bffl.target_url;
       bffl         heap 	   bffladmin    false    8         K           0    0    TABLE target_url    ACL     ?   REVOKE ALL ON TABLE bffl.target_url FROM bffladmin;
GRANT ALL ON TABLE bffl.target_url TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.target_url TO PUBLIC;
          bffl       	   bffladmin    false    209         ?            1259    16552    url_call    TABLE       CREATE TABLE bffl.url_call (
    "ShortURL_Name" character varying(75) NOT NULL,
    "ShortURL_GroupID" integer NOT NULL,
    "Timestamp" timestamp with time zone NOT NULL,
    "Client-IP" character varying(15) NOT NULL,
    "Region" character varying(50)
);
    DROP TABLE bffl.url_call;
       bffl         heap 	   bffladmin    false    8         L           0    0    TABLE url_call    ACL     ?   REVOKE ALL ON TABLE bffl.url_call FROM bffladmin;
GRANT ALL ON TABLE bffl.url_call TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.url_call TO PUBLIC;
          bffl       	   bffladmin    false    207         ?            1259    16623    url_has_tags    TABLE     ?   CREATE TABLE bffl.url_has_tags (
    "ShortURL_Name" character varying(75) NOT NULL,
    "ShortURL_GroupID" integer NOT NULL,
    "Tag_Name" character varying(30) NOT NULL
);
    DROP TABLE bffl.url_has_tags;
       bffl         heap 	   bffladmin    false    8         M           0    0    TABLE url_has_tags    ACL     ?   REVOKE ALL ON TABLE bffl.url_has_tags FROM bffladmin;
GRANT ALL ON TABLE bffl.url_has_tags TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.url_has_tags TO PUBLIC;
          bffl       	   bffladmin    false    213         ?            1259    16590    url_history    TABLE     ?   CREATE TABLE bffl.url_history (
    "TargetURL_Name" character varying(300) NOT NULL,
    "ShortURL_Name" character varying(75) NOT NULL,
    "Timestamp" timestamp with time zone NOT NULL,
    "ShortURL_GroupID" integer NOT NULL
);
    DROP TABLE bffl.url_history;
       bffl         heap 	   bffladmin    false    8         N           0    0    TABLE url_history    ACL     ?   REVOKE ALL ON TABLE bffl.url_history FROM bffladmin;
GRANT ALL ON TABLE bffl.url_history TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.url_history TO PUBLIC;
          bffl       	   bffladmin    false    211         ?            1259    16425    user_has_group    TABLE     ?   CREATE TABLE bffl.user_has_group (
    "User_EMail" character varying(80) NOT NULL,
    "Group_ID" integer NOT NULL,
    "Admin_Flag" boolean NOT NULL
);
     DROP TABLE bffl.user_has_group;
       bffl         heap 	   bffladmin    false    8         O           0    0    TABLE user_has_group    ACL     ?   REVOKE ALL ON TABLE bffl.user_has_group FROM bffladmin;
GRANT ALL ON TABLE bffl.user_has_group TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.user_has_group TO PUBLIC;
          bffl       	   bffladmin    false    205         4          0    16415 	   app_group 
   TABLE DATA                 bffl       	   bffladmin    false    204       3892.dat 6          0    16435    app_user 
   TABLE DATA                 bffl       	   bffladmin    false    206       3894.dat :          0    16572    available_protocolls 
   TABLE DATA                 bffl       	   bffladmin    false    210       3898.dat 8          0    16562 
   protocolls 
   TABLE DATA                 bffl       	   bffladmin    false    208       3896.dat 3          0    16410 	   short_url 
   TABLE DATA                 bffl       	   bffladmin    false    203       3891.dat <          0    16618    tag 
   TABLE DATA                 bffl       	   bffladmin    false    212       3900.dat 9          0    16567 
   target_url 
   TABLE DATA                 bffl       	   bffladmin    false    209       3897.dat 7          0    16552    url_call 
   TABLE DATA                 bffl       	   bffladmin    false    207       3895.dat =          0    16623    url_has_tags 
   TABLE DATA                 bffl       	   bffladmin    false    213       3901.dat ;          0    16590    url_history 
   TABLE DATA                 bffl       	   bffladmin    false    211       3899.dat 5          0    16425    user_has_group 
   TABLE DATA                 bffl       	   bffladmin    false    205       3893.dat ?           2606    16576 .   available_protocolls Available_Protocolls_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY bffl.available_protocolls
    ADD CONSTRAINT "Available_Protocolls_pkey" PRIMARY KEY ("Protocoll_Name", "Timestamp", "TargetURL_Name");
 X   ALTER TABLE ONLY bffl.available_protocolls DROP CONSTRAINT "Available_Protocolls_pkey";
       bffl         	   bffladmin    false    210    210    210         ?           2606    16419    app_group Group_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY bffl.app_group
    ADD CONSTRAINT "Group_pkey" PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY bffl.app_group DROP CONSTRAINT "Group_pkey";
       bffl         	   bffladmin    false    204         ?           2606    16551    short_url PK 
   CONSTRAINT     U   ALTER TABLE ONLY bffl.short_url
    ADD CONSTRAINT "PK" UNIQUE ("Name", "Group_ID");
 6   ALTER TABLE ONLY bffl.short_url DROP CONSTRAINT "PK";
       bffl         	   bffladmin    false    203    203         ?           2606    16566    protocolls Protocolls_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY bffl.protocolls
    ADD CONSTRAINT "Protocolls_pkey" PRIMARY KEY ("Name");
 D   ALTER TABLE ONLY bffl.protocolls DROP CONSTRAINT "Protocolls_pkey";
       bffl         	   bffladmin    false    208         ?           2606    16414    short_url ShortURL_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY bffl.short_url
    ADD CONSTRAINT "ShortURL_pkey" PRIMARY KEY ("Name", "Group_ID");
 A   ALTER TABLE ONLY bffl.short_url DROP CONSTRAINT "ShortURL_pkey";
       bffl         	   bffladmin    false    203    203         ?           2606    16622    tag Tag_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY bffl.tag
    ADD CONSTRAINT "Tag_pkey" PRIMARY KEY ("Name");
 6   ALTER TABLE ONLY bffl.tag DROP CONSTRAINT "Tag_pkey";
       bffl         	   bffladmin    false    212         ?           2606    16571    target_url TargetURL_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY bffl.target_url
    ADD CONSTRAINT "TargetURL_pkey" PRIMARY KEY ("Name");
 C   ALTER TABLE ONLY bffl.target_url DROP CONSTRAINT "TargetURL_pkey";
       bffl         	   bffladmin    false    209         ?           2606    16639    url_call URL_Call_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY bffl.url_call
    ADD CONSTRAINT "URL_Call_pkey" PRIMARY KEY ("ShortURL_Name", "ShortURL_GroupID", "Timestamp", "Client-IP");
 @   ALTER TABLE ONLY bffl.url_call DROP CONSTRAINT "URL_Call_pkey";
       bffl         	   bffladmin    false    207    207    207    207         ?           2606    16651    url_history URL_History_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY bffl.url_history
    ADD CONSTRAINT "URL_History_pkey" PRIMARY KEY ("TargetURL_Name", "ShortURL_Name", "Timestamp", "ShortURL_GroupID");
 F   ALTER TABLE ONLY bffl.url_history DROP CONSTRAINT "URL_History_pkey";
       bffl         	   bffladmin    false    211    211    211    211         ?           2606    16627    url_has_tags URL_has_Tags_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY bffl.url_has_tags
    ADD CONSTRAINT "URL_has_Tags_pkey" PRIMARY KEY ("ShortURL_Name", "ShortURL_GroupID", "Tag_Name");
 H   ALTER TABLE ONLY bffl.url_has_tags DROP CONSTRAINT "URL_has_Tags_pkey";
       bffl         	   bffladmin    false    213    213    213         ?           2606    16429 "   user_has_group User_has_Group_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY bffl.user_has_group
    ADD CONSTRAINT "User_has_Group_pkey" PRIMARY KEY ("User_EMail", "Group_ID");
 L   ALTER TABLE ONLY bffl.user_has_group DROP CONSTRAINT "User_has_Group_pkey";
       bffl         	   bffladmin    false    205    205         ?           2606    16439    app_user User_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY bffl.app_user
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("EMail");
 <   ALTER TABLE ONLY bffl.app_user DROP CONSTRAINT "User_pkey";
       bffl         	   bffladmin    false    206         ?           2606    16420    short_url Group_ID    FK CONSTRAINT     ?   ALTER TABLE ONLY bffl.short_url
    ADD CONSTRAINT "Group_ID" FOREIGN KEY ("Group_ID") REFERENCES bffl.app_group("ID") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 <   ALTER TABLE ONLY bffl.short_url DROP CONSTRAINT "Group_ID";
       bffl       	   bffladmin    false    3736    203    204         ?           2606    16430    user_has_group Group_ID    FK CONSTRAINT     }   ALTER TABLE ONLY bffl.user_has_group
    ADD CONSTRAINT "Group_ID" FOREIGN KEY ("Group_ID") REFERENCES bffl.app_group("ID");
 A   ALTER TABLE ONLY bffl.user_has_group DROP CONSTRAINT "Group_ID";
       bffl       	   bffladmin    false    204    205    3736         ?           2606    16608 #   available_protocolls Protocoll_Name    FK CONSTRAINT     ?   ALTER TABLE ONLY bffl.available_protocolls
    ADD CONSTRAINT "Protocoll_Name" FOREIGN KEY ("Protocoll_Name") REFERENCES bffl.protocolls("Name") NOT VALID;
 M   ALTER TABLE ONLY bffl.available_protocolls DROP CONSTRAINT "Protocoll_Name";
       bffl       	   bffladmin    false    208    3744    210         ?           2606    16628    url_has_tags ShortURL    FK CONSTRAINT     ?   ALTER TABLE ONLY bffl.url_has_tags
    ADD CONSTRAINT "ShortURL" FOREIGN KEY ("ShortURL_Name", "ShortURL_GroupID") REFERENCES bffl.short_url("Name", "Group_ID");
 ?   ALTER TABLE ONLY bffl.url_has_tags DROP CONSTRAINT "ShortURL";
       bffl       	   bffladmin    false    213    203    213    203    3734         ?           2606    16640    url_call ShortURL_Name    FK CONSTRAINT     ?   ALTER TABLE ONLY bffl.url_call
    ADD CONSTRAINT "ShortURL_Name" FOREIGN KEY ("ShortURL_Name", "ShortURL_GroupID") REFERENCES bffl.short_url("Name", "Group_ID") NOT VALID;
 @   ALTER TABLE ONLY bffl.url_call DROP CONSTRAINT "ShortURL_Name";
       bffl       	   bffladmin    false    207    3734    203    203    207         ?           2606    16652    url_history ShortURL_Name    FK CONSTRAINT     ?   ALTER TABLE ONLY bffl.url_history
    ADD CONSTRAINT "ShortURL_Name" FOREIGN KEY ("ShortURL_Name", "ShortURL_GroupID") REFERENCES bffl.short_url("Name", "Group_ID");
 C   ALTER TABLE ONLY bffl.url_history DROP CONSTRAINT "ShortURL_Name";
       bffl       	   bffladmin    false    3734    211    211    203    203         ?           2606    16633    url_has_tags Tag    FK CONSTRAINT     r   ALTER TABLE ONLY bffl.url_has_tags
    ADD CONSTRAINT "Tag" FOREIGN KEY ("Tag_Name") REFERENCES bffl.tag("Name");
 :   ALTER TABLE ONLY bffl.url_has_tags DROP CONSTRAINT "Tag";
       bffl       	   bffladmin    false    213    212    3752         ?           2606    16598    url_history TargetURL_Name    FK CONSTRAINT     ?   ALTER TABLE ONLY bffl.url_history
    ADD CONSTRAINT "TargetURL_Name" FOREIGN KEY ("TargetURL_Name") REFERENCES bffl.target_url("Name");
 D   ALTER TABLE ONLY bffl.url_history DROP CONSTRAINT "TargetURL_Name";
       bffl       	   bffladmin    false    209    3746    211         ?           2606    16613 #   available_protocolls TargetURL_Name    FK CONSTRAINT     ?   ALTER TABLE ONLY bffl.available_protocolls
    ADD CONSTRAINT "TargetURL_Name" FOREIGN KEY ("TargetURL_Name") REFERENCES bffl.target_url("Name") NOT VALID;
 M   ALTER TABLE ONLY bffl.available_protocolls DROP CONSTRAINT "TargetURL_Name";
       bffl       	   bffladmin    false    210    3746    209         ?           2606    16440    user_has_group User_EMail    FK CONSTRAINT     ?   ALTER TABLE ONLY bffl.user_has_group
    ADD CONSTRAINT "User_EMail" FOREIGN KEY ("User_EMail") REFERENCES bffl.app_user("EMail") NOT VALID;
 C   ALTER TABLE ONLY bffl.user_has_group DROP CONSTRAINT "User_EMail";
       bffl       	   bffladmin    false    206    3740    205                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  3892.dat                                                                                            0000600 0004000 0002000 00000000002 13762703665 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3894.dat                                                                                            0000600 0004000 0002000 00000000162 13762703665 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO bffl.app_user ("EMail", "FName", "SName", "PW") VALUES ('abc.test@web.de', 'Abc', 'Test', '12345');


                                                                                                                                                                                                                                                                                                                                                                                                              3898.dat                                                                                            0000600 0004000 0002000 00000000002 13762703665 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3896.dat                                                                                            0000600 0004000 0002000 00000000002 13762703665 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3891.dat                                                                                            0000600 0004000 0002000 00000000002 13762703665 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3900.dat                                                                                            0000600 0004000 0002000 00000000002 13762703665 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3897.dat                                                                                            0000600 0004000 0002000 00000000002 13762703665 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3895.dat                                                                                            0000600 0004000 0002000 00000000002 13762703665 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3901.dat                                                                                            0000600 0004000 0002000 00000000002 13762703665 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3899.dat                                                                                            0000600 0004000 0002000 00000000002 13762703665 0014275 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3893.dat                                                                                            0000600 0004000 0002000 00000000002 13762703665 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000033000 13762703665 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 13.0

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

DROP DATABASE "BFFL";
--
-- Name: BFFL; Type: DATABASE; Schema: -; Owner: bffladmin
--

CREATE DATABASE "BFFL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE "BFFL" OWNER TO bffladmin;

\connect "BFFL"

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

--
-- Name: bffl; Type: SCHEMA; Schema: -; Owner: bffladmin
--

CREATE SCHEMA bffl;


ALTER SCHEMA bffl OWNER TO bffladmin;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: app_group; Type: TABLE; Schema: bffl; Owner: bffladmin
--

CREATE TABLE bffl.app_group (
    "ID" integer NOT NULL,
    "Name" character varying(60) NOT NULL,
    "Max_Size" integer
);


ALTER TABLE bffl.app_group OWNER TO bffladmin;

--
-- Name: app_user; Type: TABLE; Schema: bffl; Owner: bffladmin
--

CREATE TABLE bffl.app_user (
    "EMail" character varying(80) NOT NULL,
    "FName" character varying(30) NOT NULL,
    "SName" character varying(50) NOT NULL,
    "PW" character varying(256) NOT NULL
);


ALTER TABLE bffl.app_user OWNER TO bffladmin;

--
-- Name: available_protocolls; Type: TABLE; Schema: bffl; Owner: bffladmin
--

CREATE TABLE bffl.available_protocolls (
    "Protocoll_Name" public."Protocoll" NOT NULL,
    "Timestamp" timestamp with time zone NOT NULL,
    "TargetURL_Name" character varying(300) NOT NULL
);


ALTER TABLE bffl.available_protocolls OWNER TO bffladmin;

--
-- Name: protocolls; Type: TABLE; Schema: bffl; Owner: bffladmin
--

CREATE TABLE bffl.protocolls (
    "Name" public."Protocoll" NOT NULL,
    "Security" public."Security",
    "Version" character varying(20)
);


ALTER TABLE bffl.protocolls OWNER TO bffladmin;

--
-- Name: short_url; Type: TABLE; Schema: bffl; Owner: bffladmin
--

CREATE TABLE bffl.short_url (
    "Name" character varying(75) NOT NULL,
    "Group_ID" integer NOT NULL,
    "Scope" integer,
    "Custom_Suffix" character varying(15) NOT NULL,
    "Update_Flag" boolean NOT NULL,
    "Delet_Flag" boolean NOT NULL
);


ALTER TABLE bffl.short_url OWNER TO bffladmin;

--
-- Name: tag; Type: TABLE; Schema: bffl; Owner: bffladmin
--

CREATE TABLE bffl.tag (
    "Name" character varying(30) NOT NULL,
    "Description" character varying(75),
    "Color" character varying(6)
);


ALTER TABLE bffl.tag OWNER TO bffladmin;

--
-- Name: target_url; Type: TABLE; Schema: bffl; Owner: bffladmin
--

CREATE TABLE bffl.target_url (
    "Name" character varying(300) NOT NULL,
    "Owner" character varying(60),
    "Type" public."Web_Resource_Type" NOT NULL
);


ALTER TABLE bffl.target_url OWNER TO bffladmin;

--
-- Name: url_call; Type: TABLE; Schema: bffl; Owner: bffladmin
--

CREATE TABLE bffl.url_call (
    "ShortURL_Name" character varying(75) NOT NULL,
    "ShortURL_GroupID" integer NOT NULL,
    "Timestamp" timestamp with time zone NOT NULL,
    "Client-IP" character varying(15) NOT NULL,
    "Region" character varying(50)
);


ALTER TABLE bffl.url_call OWNER TO bffladmin;

--
-- Name: url_has_tags; Type: TABLE; Schema: bffl; Owner: bffladmin
--

CREATE TABLE bffl.url_has_tags (
    "ShortURL_Name" character varying(75) NOT NULL,
    "ShortURL_GroupID" integer NOT NULL,
    "Tag_Name" character varying(30) NOT NULL
);


ALTER TABLE bffl.url_has_tags OWNER TO bffladmin;

--
-- Name: url_history; Type: TABLE; Schema: bffl; Owner: bffladmin
--

CREATE TABLE bffl.url_history (
    "TargetURL_Name" character varying(300) NOT NULL,
    "ShortURL_Name" character varying(75) NOT NULL,
    "Timestamp" timestamp with time zone NOT NULL,
    "ShortURL_GroupID" integer NOT NULL
);


ALTER TABLE bffl.url_history OWNER TO bffladmin;

--
-- Name: user_has_group; Type: TABLE; Schema: bffl; Owner: bffladmin
--

CREATE TABLE bffl.user_has_group (
    "User_EMail" character varying(80) NOT NULL,
    "Group_ID" integer NOT NULL,
    "Admin_Flag" boolean NOT NULL
);


ALTER TABLE bffl.user_has_group OWNER TO bffladmin;

--
-- Data for Name: app_group; Type: TABLE DATA; Schema: bffl; Owner: bffladmin
--

\i $$PATH$$/3892.dat

--
-- Data for Name: app_user; Type: TABLE DATA; Schema: bffl; Owner: bffladmin
--

\i $$PATH$$/3894.dat

--
-- Data for Name: available_protocolls; Type: TABLE DATA; Schema: bffl; Owner: bffladmin
--

\i $$PATH$$/3898.dat

--
-- Data for Name: protocolls; Type: TABLE DATA; Schema: bffl; Owner: bffladmin
--

\i $$PATH$$/3896.dat

--
-- Data for Name: short_url; Type: TABLE DATA; Schema: bffl; Owner: bffladmin
--

\i $$PATH$$/3891.dat

--
-- Data for Name: tag; Type: TABLE DATA; Schema: bffl; Owner: bffladmin
--

\i $$PATH$$/3900.dat

--
-- Data for Name: target_url; Type: TABLE DATA; Schema: bffl; Owner: bffladmin
--

\i $$PATH$$/3897.dat

--
-- Data for Name: url_call; Type: TABLE DATA; Schema: bffl; Owner: bffladmin
--

\i $$PATH$$/3895.dat

--
-- Data for Name: url_has_tags; Type: TABLE DATA; Schema: bffl; Owner: bffladmin
--

\i $$PATH$$/3901.dat

--
-- Data for Name: url_history; Type: TABLE DATA; Schema: bffl; Owner: bffladmin
--

\i $$PATH$$/3899.dat

--
-- Data for Name: user_has_group; Type: TABLE DATA; Schema: bffl; Owner: bffladmin
--

\i $$PATH$$/3893.dat

--
-- Name: available_protocolls Available_Protocolls_pkey; Type: CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.available_protocolls
    ADD CONSTRAINT "Available_Protocolls_pkey" PRIMARY KEY ("Protocoll_Name", "Timestamp", "TargetURL_Name");


--
-- Name: app_group Group_pkey; Type: CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.app_group
    ADD CONSTRAINT "Group_pkey" PRIMARY KEY ("ID");


--
-- Name: short_url PK; Type: CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.short_url
    ADD CONSTRAINT "PK" UNIQUE ("Name", "Group_ID");


--
-- Name: protocolls Protocolls_pkey; Type: CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.protocolls
    ADD CONSTRAINT "Protocolls_pkey" PRIMARY KEY ("Name");


--
-- Name: short_url ShortURL_pkey; Type: CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.short_url
    ADD CONSTRAINT "ShortURL_pkey" PRIMARY KEY ("Name", "Group_ID");


--
-- Name: tag Tag_pkey; Type: CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.tag
    ADD CONSTRAINT "Tag_pkey" PRIMARY KEY ("Name");


--
-- Name: target_url TargetURL_pkey; Type: CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.target_url
    ADD CONSTRAINT "TargetURL_pkey" PRIMARY KEY ("Name");


--
-- Name: url_call URL_Call_pkey; Type: CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.url_call
    ADD CONSTRAINT "URL_Call_pkey" PRIMARY KEY ("ShortURL_Name", "ShortURL_GroupID", "Timestamp", "Client-IP");


--
-- Name: url_history URL_History_pkey; Type: CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.url_history
    ADD CONSTRAINT "URL_History_pkey" PRIMARY KEY ("TargetURL_Name", "ShortURL_Name", "Timestamp", "ShortURL_GroupID");


--
-- Name: url_has_tags URL_has_Tags_pkey; Type: CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.url_has_tags
    ADD CONSTRAINT "URL_has_Tags_pkey" PRIMARY KEY ("ShortURL_Name", "ShortURL_GroupID", "Tag_Name");


--
-- Name: user_has_group User_has_Group_pkey; Type: CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.user_has_group
    ADD CONSTRAINT "User_has_Group_pkey" PRIMARY KEY ("User_EMail", "Group_ID");


--
-- Name: app_user User_pkey; Type: CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.app_user
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("EMail");


--
-- Name: short_url Group_ID; Type: FK CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.short_url
    ADD CONSTRAINT "Group_ID" FOREIGN KEY ("Group_ID") REFERENCES bffl.app_group("ID") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: user_has_group Group_ID; Type: FK CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.user_has_group
    ADD CONSTRAINT "Group_ID" FOREIGN KEY ("Group_ID") REFERENCES bffl.app_group("ID");


--
-- Name: available_protocolls Protocoll_Name; Type: FK CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.available_protocolls
    ADD CONSTRAINT "Protocoll_Name" FOREIGN KEY ("Protocoll_Name") REFERENCES bffl.protocolls("Name") NOT VALID;


--
-- Name: url_has_tags ShortURL; Type: FK CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.url_has_tags
    ADD CONSTRAINT "ShortURL" FOREIGN KEY ("ShortURL_Name", "ShortURL_GroupID") REFERENCES bffl.short_url("Name", "Group_ID");


--
-- Name: url_call ShortURL_Name; Type: FK CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.url_call
    ADD CONSTRAINT "ShortURL_Name" FOREIGN KEY ("ShortURL_Name", "ShortURL_GroupID") REFERENCES bffl.short_url("Name", "Group_ID") NOT VALID;


--
-- Name: url_history ShortURL_Name; Type: FK CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.url_history
    ADD CONSTRAINT "ShortURL_Name" FOREIGN KEY ("ShortURL_Name", "ShortURL_GroupID") REFERENCES bffl.short_url("Name", "Group_ID");


--
-- Name: url_has_tags Tag; Type: FK CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.url_has_tags
    ADD CONSTRAINT "Tag" FOREIGN KEY ("Tag_Name") REFERENCES bffl.tag("Name");


--
-- Name: url_history TargetURL_Name; Type: FK CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.url_history
    ADD CONSTRAINT "TargetURL_Name" FOREIGN KEY ("TargetURL_Name") REFERENCES bffl.target_url("Name");


--
-- Name: available_protocolls TargetURL_Name; Type: FK CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.available_protocolls
    ADD CONSTRAINT "TargetURL_Name" FOREIGN KEY ("TargetURL_Name") REFERENCES bffl.target_url("Name") NOT VALID;


--
-- Name: user_has_group User_EMail; Type: FK CONSTRAINT; Schema: bffl; Owner: bffladmin
--

ALTER TABLE ONLY bffl.user_has_group
    ADD CONSTRAINT "User_EMail" FOREIGN KEY ("User_EMail") REFERENCES bffl.app_user("EMail") NOT VALID;


--
-- Name: SCHEMA bffl; Type: ACL; Schema: -; Owner: bffladmin
--

REVOKE ALL ON SCHEMA bffl FROM bffladmin;
GRANT ALL ON SCHEMA bffl TO bffladmin WITH GRANT OPTION;


--
-- Name: TABLE app_group; Type: ACL; Schema: bffl; Owner: bffladmin
--

REVOKE ALL ON TABLE bffl.app_group FROM bffladmin;
GRANT ALL ON TABLE bffl.app_group TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.app_group TO PUBLIC;


--
-- Name: TABLE app_user; Type: ACL; Schema: bffl; Owner: bffladmin
--

REVOKE ALL ON TABLE bffl.app_user FROM bffladmin;
GRANT ALL ON TABLE bffl.app_user TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.app_user TO PUBLIC;


--
-- Name: TABLE available_protocolls; Type: ACL; Schema: bffl; Owner: bffladmin
--

REVOKE ALL ON TABLE bffl.available_protocolls FROM bffladmin;
GRANT ALL ON TABLE bffl.available_protocolls TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.available_protocolls TO PUBLIC;


--
-- Name: TABLE protocolls; Type: ACL; Schema: bffl; Owner: bffladmin
--

REVOKE ALL ON TABLE bffl.protocolls FROM bffladmin;
GRANT ALL ON TABLE bffl.protocolls TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.protocolls TO PUBLIC;


--
-- Name: TABLE short_url; Type: ACL; Schema: bffl; Owner: bffladmin
--

REVOKE ALL ON TABLE bffl.short_url FROM bffladmin;
GRANT ALL ON TABLE bffl.short_url TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.short_url TO PUBLIC;


--
-- Name: TABLE tag; Type: ACL; Schema: bffl; Owner: bffladmin
--

REVOKE ALL ON TABLE bffl.tag FROM bffladmin;
GRANT ALL ON TABLE bffl.tag TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.tag TO PUBLIC;


--
-- Name: TABLE target_url; Type: ACL; Schema: bffl; Owner: bffladmin
--

REVOKE ALL ON TABLE bffl.target_url FROM bffladmin;
GRANT ALL ON TABLE bffl.target_url TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.target_url TO PUBLIC;


--
-- Name: TABLE url_call; Type: ACL; Schema: bffl; Owner: bffladmin
--

REVOKE ALL ON TABLE bffl.url_call FROM bffladmin;
GRANT ALL ON TABLE bffl.url_call TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.url_call TO PUBLIC;


--
-- Name: TABLE url_has_tags; Type: ACL; Schema: bffl; Owner: bffladmin
--

REVOKE ALL ON TABLE bffl.url_has_tags FROM bffladmin;
GRANT ALL ON TABLE bffl.url_has_tags TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.url_has_tags TO PUBLIC;


--
-- Name: TABLE url_history; Type: ACL; Schema: bffl; Owner: bffladmin
--

REVOKE ALL ON TABLE bffl.url_history FROM bffladmin;
GRANT ALL ON TABLE bffl.url_history TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.url_history TO PUBLIC;


--
-- Name: TABLE user_has_group; Type: ACL; Schema: bffl; Owner: bffladmin
--

REVOKE ALL ON TABLE bffl.user_has_group FROM bffladmin;
GRANT ALL ON TABLE bffl.user_has_group TO bffladmin WITH GRANT OPTION;
GRANT SELECT ON TABLE bffl.user_has_group TO PUBLIC;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                