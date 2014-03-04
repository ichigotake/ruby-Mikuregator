CREATE TABLE authors
(
    id INT PRIMARY KEY NOT NULL,
    name VARCHAR(128) NOT NULL,
    avatar_image_url LONGTEXT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL
);
CREATE TABLE repositories
(
    id INT PRIMARY KEY NOT NULL,
    nickname VARCHAR(64) NOT NULL,
    full_name VARCHAR(64) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    description LONGTEXT NOT NULL,
    api_resource_cache LONGTEXT NOT NULL,
    html_url LONGTEXT NOT NULL,
    repository_url LONGTEXT NOT NULL,
    host_type CHAR(7) DEFAULT 'other' NOT NULL,
    owner_author_id INT NOT NULL
);
CREATE UNIQUE INDEX unique_name ON authors ( name );
ALTER TABLE repositories ADD FOREIGN KEY ( owner_author_id ) REFERENCES authors ( id );
CREATE UNIQUE INDEX unique_full_name ON repositories ( full_name );

