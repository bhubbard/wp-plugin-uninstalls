-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('description', 'cap-user_login', '_original_author_id', '_original_author_login', '_coauthor');
DELETE FROM wp_usermeta WHERE meta_key IN ('description', 'cap-user_login', '_original_author_id', '_original_author_login', '_coauthor');
DELETE FROM wp_termmeta WHERE meta_key IN ('description', 'cap-user_login', '_original_author_id', '_original_author_login', '_coauthor');
DELETE FROM wp_commentmeta WHERE meta_key IN ('description', 'cap-user_login', '_original_author_id', '_original_author_login', '_coauthor');

