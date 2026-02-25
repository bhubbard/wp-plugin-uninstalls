-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_sbg_phone', '_sbg_email', '_sbg_facebook', '_sbg_twitter');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_sbg_phone', '_sbg_email', '_sbg_facebook', '_sbg_twitter');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_sbg_phone', '_sbg_email', '_sbg_facebook', '_sbg_twitter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_sbg_phone', '_sbg_email', '_sbg_facebook', '_sbg_twitter');

