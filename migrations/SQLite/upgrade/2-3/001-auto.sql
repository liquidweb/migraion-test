-- Convert schema '/Users/creinhardt/projects/migration-testing/migrations/_source/deploy/2/001-auto.yml' to '/Users/creinhardt/projects/migration-testing/migrations/_source/deploy/3/001-auto.yml':;

;
BEGIN;

;
ALTER TABLE album ADD COLUMN release_year integer;

;

COMMIT;

