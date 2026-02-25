-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'prad_option_assign_all', 'prad_product_image_update_data', 'prad_custom_fonts', 'prad_addons_default_option_created', 'edd_prad_license_key', 'woocommerce_price_decimal_sep', 'woocommerce_price_num_decimals', 'woocommerce_currency_pos', 'edd_prad_license_data', 'prad_settings', 'woocommerce_currency', 'prad_global_style_css', 'woocommerce_price_thousand_sep', 'prad_global_style', 'durbin_country_code');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('prad_product_assigned_meta_inc', 'prad_product_assigned_meta_exc', 'prad_term_assigned_meta_inc', 'prad_addons_blocks', 'prad_base_assigned_data', 'thumbnail_id', 'prad_addons_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('prad_product_assigned_meta_inc', 'prad_product_assigned_meta_exc', 'prad_term_assigned_meta_inc', 'prad_addons_blocks', 'prad_base_assigned_data', 'thumbnail_id', 'prad_addons_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('prad_product_assigned_meta_inc', 'prad_product_assigned_meta_exc', 'prad_term_assigned_meta_inc', 'prad_addons_blocks', 'prad_base_assigned_data', 'thumbnail_id', 'prad_addons_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('prad_product_assigned_meta_inc', 'prad_product_assigned_meta_exc', 'prad_term_assigned_meta_inc', 'prad_addons_blocks', 'prad_base_assigned_data', 'thumbnail_id', 'prad_addons_css');

