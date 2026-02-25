-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dc_dc_WP_ST_general_settings_name', 'dc_WP_Smart_Taxonomy_installed', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_smart_cat_settings', '_smart_cats');
DELETE FROM wp_usermeta WHERE meta_key IN ('_smart_cat_settings', '_smart_cats');
DELETE FROM wp_termmeta WHERE meta_key IN ('_smart_cat_settings', '_smart_cats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_smart_cat_settings', '_smart_cats');

