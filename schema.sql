CREATE TABLE items (id TEXT PRIMARY KEY, category TEXT NOT NULL, name TEXT NOT NULL, created_at INTEGER NOT NULL);
CREATE UNIQUE INDEX item_name ON items(category, name COLLATE NOCASE);
CREATE TABLE votes (item_id TEXT NOT NULL REFERENCES items(id), voter TEXT NOT NULL, PRIMARY KEY(item_id,voter));
