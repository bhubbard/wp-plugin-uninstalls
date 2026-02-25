-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('favored_options', 'favored_registered');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fav_id', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('fav_id', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('fav_id', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fav_id', '_wp_page_template');

