-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sway_insert_header');
DELETE FROM wp_options WHERE option_name LIKE 'feed_%';
DELETE FROM wp_options WHERE option_name LIKE 'feed_mod_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_inpost_head_script');
DELETE FROM wp_usermeta WHERE meta_key IN ('_inpost_head_script');
DELETE FROM wp_termmeta WHERE meta_key IN ('_inpost_head_script');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_inpost_head_script');

