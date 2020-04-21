CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE IF NOT EXISTS "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "url" varchar(255), "description" text, "user_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE IF NOT EXISTS "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "username" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE IF NOT EXISTS "comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "body" text, "user_id" integer, "post_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE IF NOT EXISTS "categories" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE IF NOT EXISTS "post_categories" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "category_id" integer, "post_id" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO schema_migrations (version) VALUES ('20200417155302');

INSERT INTO schema_migrations (version) VALUES ('20200417160052');

INSERT INTO schema_migrations (version) VALUES ('20200417160514');

INSERT INTO schema_migrations (version) VALUES ('20200417161951');

INSERT INTO schema_migrations (version) VALUES ('20200417172534');

INSERT INTO schema_migrations (version) VALUES ('20200417183416');
