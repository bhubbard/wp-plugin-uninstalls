-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_db_version', 'mos_product_specifications_tab_options', 'mos_product_specifications_tab_flush_rewrite', 'mos_product_specifications_tab_deactive_key', 'mos_product_specifications_tab_do_activation_redirect', 'mos_product_specifications_tab_activation_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mos_specifications_data', 'mos_product_specifications_tab_settings_theme');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mos_specifications_data', 'mos_product_specifications_tab_settings_theme');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mos_specifications_data', 'mos_product_specifications_tab_settings_theme');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mos_specifications_data', 'mos_product_specifications_tab_settings_theme');

