-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_kseo_general_meta_keywords', '_kseo_db_setup_version', '_kseo_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'amp_ratting_total_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kseo_post_title', '_kseo_seen_about_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kseo_post_title', '_kseo_seen_about_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kseo_post_title', '_kseo_seen_about_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kseo_post_title', '_kseo_seen_about_page');

