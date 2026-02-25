-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%active';
DELETE FROM wp_options WHERE option_name LIKE '%posttype';
DELETE FROM wp_options WHERE option_name LIKE '%taxonomy';
DELETE FROM wp_options WHERE option_name LIKE '%posttype_block';
DELETE FROM wp_options WHERE option_name LIKE '%taxonomy_block';

