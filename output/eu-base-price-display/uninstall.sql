-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'eubaprdi_installed', 'eubaprdi_version', 'eubaprdi_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eubaprdi_override_global', '_eubaprdi_display_unit', '_eubaprdi_custom_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eubaprdi_override_global', '_eubaprdi_display_unit', '_eubaprdi_custom_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eubaprdi_override_global', '_eubaprdi_display_unit', '_eubaprdi_custom_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eubaprdi_override_global', '_eubaprdi_display_unit', '_eubaprdi_custom_price');

