-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mgl_captions_enabled', 'mgl_db_version', 'mgl_shortcodes', 'mgl_collections', 'mgl_options', 'force_sslverify', 'meowapps_hide_meowapps', 'litespeed.conf.cache-rest', 'mwai_options', 'meowapps_news');
DELETE FROM wp_options WHERE option_name LIKE 'mgl_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_date';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_gallery_link_url', '_gallery_link_target');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_gallery_link_url', '_gallery_link_target');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_gallery_link_url', '_gallery_link_target');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_gallery_link_url', '_gallery_link_target');

