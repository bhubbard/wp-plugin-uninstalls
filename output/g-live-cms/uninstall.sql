-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glive_post_type_rules_flashed_14');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('race_folder_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('race_folder_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('race_folder_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('race_folder_meta');

