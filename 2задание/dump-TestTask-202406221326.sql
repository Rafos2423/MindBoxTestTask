PGDMP  .                    |            TestTask    16.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    484273    TestTask    DATABASE     ~   CREATE DATABASE "TestTask" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "TestTask";
                postgres    false                        2615    484274    schema    SCHEMA        CREATE SCHEMA schema;
    DROP SCHEMA schema;
                postgres    false            �            1259    484280 
   Categories    TABLE     j   CREATE TABLE schema."Categories" (
    "CategoryName" text NOT NULL,
    "CategoryId" integer NOT NULL
);
     DROP TABLE schema."Categories";
       schema         heap    postgres    false    6            �            1259    484295    ProductCategories    TABLE     h   CREATE TABLE schema."ProductCategories" (
    "ProductId" integer,
    "CategoryId" integer NOT NULL
);
 '   DROP TABLE schema."ProductCategories";
       schema         heap    postgres    false    6            �            1259    484275    Products    TABLE     f   CREATE TABLE schema."Products" (
    "ProductName" text NOT NULL,
    "ProductId" integer NOT NULL
);
    DROP TABLE schema."Products";
       schema         heap    postgres    false    6            �          0    484280 
   Categories 
   TABLE DATA           D   COPY schema."Categories" ("CategoryName", "CategoryId") FROM stdin;
    schema          postgres    false    217   �       �          0    484295    ProductCategories 
   TABLE DATA           H   COPY schema."ProductCategories" ("ProductId", "CategoryId") FROM stdin;
    schema          postgres    false    218   �       �          0    484275    Products 
   TABLE DATA           @   COPY schema."Products" ("ProductName", "ProductId") FROM stdin;
    schema          postgres    false    216   (       %           2606    484301    Categories categories_pk 
   CONSTRAINT     b   ALTER TABLE ONLY schema."Categories"
    ADD CONSTRAINT categories_pk PRIMARY KEY ("CategoryId");
 D   ALTER TABLE ONLY schema."Categories" DROP CONSTRAINT categories_pk;
       schema            postgres    false    217            #           2606    484299    Products products_pk 
   CONSTRAINT     ]   ALTER TABLE ONLY schema."Products"
    ADD CONSTRAINT products_pk PRIMARY KEY ("ProductId");
 @   ALTER TABLE ONLY schema."Products" DROP CONSTRAINT products_pk;
       schema            postgres    false    216            &           2606    484307 1   ProductCategories productcategories_categories_fk    FK CONSTRAINT     �   ALTER TABLE ONLY schema."ProductCategories"
    ADD CONSTRAINT productcategories_categories_fk FOREIGN KEY ("CategoryId") REFERENCES schema."Categories"("CategoryId");
 ]   ALTER TABLE ONLY schema."ProductCategories" DROP CONSTRAINT productcategories_categories_fk;
       schema          postgres    false    218    4645    217            '           2606    484302 /   ProductCategories productcategories_products_fk    FK CONSTRAINT     �   ALTER TABLE ONLY schema."ProductCategories"
    ADD CONSTRAINT productcategories_products_fk FOREIGN KEY ("ProductId") REFERENCES schema."Products"("ProductId");
 [   ALTER TABLE ONLY schema."ProductCategories" DROP CONSTRAINT productcategories_products_fk;
       schema          postgres    false    4643    216    218            �      x��H,J)O,J�4�*�O+3��b���� ��      �      x�3�4�2bcN#. 6�c���� '��      �   C   x�+�LI�ON,J�4�J.(�4�J�+�,�,*-�4��OK�LN�4��M��/��4�J�O�4����� ?�m     