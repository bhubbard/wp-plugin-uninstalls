-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mgcl_button_label', 'mgcl_obmode', 'mgcl_parsing_engine', 'mgcl_log', 'mgcl_button_enabled', 'force_sslverify', 'meowapps_hide_meowapps', 'litespeed.conf.cache-rest', 'mwai_options', 'meowapps_news');
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_date';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gallery_link_url', '_gallery_link_target', '_gallery_link_rel', '_gallery_link_aria');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gallery_link_url', '_gallery_link_target', '_gallery_link_rel', '_gallery_link_aria');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gallery_link_url', '_gallery_link_target', '_gallery_link_rel', '_gallery_link_aria');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gallery_link_url', '_gallery_link_target', '_gallery_link_rel', '_gallery_link_aria');

