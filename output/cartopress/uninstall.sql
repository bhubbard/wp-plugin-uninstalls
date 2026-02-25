-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cartopress_admin_options', 'cartopress_custom_fields', 'cartopress_cartodb_verified');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cp_post_description', '_cp_post_geo_data', '_cp_post_donotsync');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cp_post_description', '_cp_post_geo_data', '_cp_post_donotsync');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cp_post_description', '_cp_post_geo_data', '_cp_post_donotsync');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cp_post_description', '_cp_post_geo_data', '_cp_post_donotsync');

