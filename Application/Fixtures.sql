

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('c86a548a-2f98-42d7-89f7-e368ba130c12', 'asdf', 'bbb', '2021-02-16 19:23:24.074546+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('83d61013-1dca-41c6-b294-5a1ffecf46fa', '123', 'bbb', '2021-02-16 19:23:32.298046+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('56b4ab75-8e3a-43c9-981c-174f140c70d3', '222', 'bbb', '2021-02-16 19:23:36.74448+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('83a59ae2-9b5f-4e27-8e36-43754e044a07', 'Hello World!', '## hoge
+ aa
+ bb', '2021-02-16 19:30:42.765773+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('51fda60b-d1ce-477b-92b7-5b671a06d178', 'asdf', '# b
## aa
### aaa
bb
b
b
b', '2021-02-16 21:13:14.145575+09');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('ba734b06-8639-4eeb-a574-2dd0abde955b', '51fda60b-d1ce-477b-92b7-5b671a06d178', 'take', 'Good Job!!!');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('50ebd540-cbf4-4b20-9401-6d0aefd2d51b', '51fda60b-d1ce-477b-92b7-5b671a06d178', 'a', 'b');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


