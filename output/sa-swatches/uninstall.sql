-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sasw_db_version', 'sasw_swatches_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sasw_custom_swatches', '_sasw_attr_settings', '_sasw_swatch', '_sasw_attr_options_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sasw_custom_swatches', '_sasw_attr_settings', '_sasw_swatch', '_sasw_attr_options_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sasw_custom_swatches', '_sasw_attr_settings', '_sasw_swatch', '_sasw_attr_options_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sasw_custom_swatches', '_sasw_attr_settings', '_sasw_swatch', '_sasw_attr_options_order');

