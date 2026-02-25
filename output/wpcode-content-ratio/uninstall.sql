-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcode_options', 'wpcode_tags_ratio', 'wpcode_categories_ratio', 'wpcode_author_ratio');
DELETE FROM wp_options WHERE option_name LIKE '%_ratio';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ratio');
DELETE FROM wp_usermeta WHERE meta_key IN ('ratio');
DELETE FROM wp_termmeta WHERE meta_key IN ('ratio');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ratio');

