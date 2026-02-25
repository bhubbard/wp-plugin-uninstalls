-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('meowapps_hide_meowapps', 'meowapps_hide_ads', 'force_sslverify', 'wpcp_hide_permalink');
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_date';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_category_permalink');
DELETE FROM wp_usermeta WHERE meta_key IN ('_category_permalink');
DELETE FROM wp_termmeta WHERE meta_key IN ('_category_permalink');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_category_permalink');

