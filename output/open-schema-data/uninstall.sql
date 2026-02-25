-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('schema_data', 'article_schema_data', 'author_name', 'author_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('schema_data', 'article_schema_data', 'author_name', 'author_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('schema_data', 'article_schema_data', 'author_name', 'author_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('schema_data', 'article_schema_data', 'author_name', 'author_url');

