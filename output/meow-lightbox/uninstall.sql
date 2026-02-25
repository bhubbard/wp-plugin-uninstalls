-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mwl_map_api_key', 'mwl_map_style', 'force_sslverify', 'meowapps_hide_meowapps', 'litespeed.conf.cache-rest', 'mwai_options', 'meowapps_news');
DELETE FROM wp_options WHERE option_name LIKE 'mwl_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_date';
DELETE FROM wp_options WHERE option_name LIKE '%_XX';
DELETE FROM wp_options WHERE option_name LIKE '%_OO';
DELETE FROM wp_options WHERE option_name LIKE '%_XO';
DELETE FROM wp_options WHERE option_name LIKE '%_OX';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

