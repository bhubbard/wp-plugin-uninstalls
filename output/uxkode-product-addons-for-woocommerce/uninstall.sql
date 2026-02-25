-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uxkode_custom_buttons_styles', 'uxkode_addons_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_uxkode_custom_buttons_type', '_uxkode_product_addons_enabled', '_uxkode_product_addons_selected', '_uxkode_custom_buttons_enabled', '_uxkode_custom_buttons');
DELETE FROM wp_usermeta WHERE meta_key IN ('_uxkode_custom_buttons_type', '_uxkode_product_addons_enabled', '_uxkode_product_addons_selected', '_uxkode_custom_buttons_enabled', '_uxkode_custom_buttons');
DELETE FROM wp_termmeta WHERE meta_key IN ('_uxkode_custom_buttons_type', '_uxkode_product_addons_enabled', '_uxkode_product_addons_selected', '_uxkode_custom_buttons_enabled', '_uxkode_custom_buttons');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_uxkode_custom_buttons_type', '_uxkode_product_addons_enabled', '_uxkode_product_addons_selected', '_uxkode_custom_buttons_enabled', '_uxkode_custom_buttons');

