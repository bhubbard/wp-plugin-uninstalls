-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ACSC-options', 'actus-deep-schema-activated', 'ACSC_data', 'ACSC-website-1', 'ACSC-website-1-admin', 'ACSC-audi-1', 'ACSC-busi-1', 'ACSC-busi-1-admin', 'learn_press_currency', 'rank-math-options-titles', 'woocommerce_allowed_countries', 'woocommerce_ship_to_countries', 'woocommerce_specific_allowed_countries', 'woocommerce_specific_ship_to_countries', 'woocommerce_all_except_countries', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'woocommerce_store_address', 'woocommerce_store_address_2');
DELETE FROM wp_options WHERE option_name LIKE 'ACSC-%';
DELETE FROM wp_options WHERE option_name LIKE 'ACSC-pers-wp-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('description', 'autodescription-user-settings', '_wp_page_template', '_recipe_settings', '_wp_attachment_image_alt', 'rating', 'ACSC-media');
DELETE FROM wp_usermeta WHERE meta_key IN ('description', 'autodescription-user-settings', '_wp_page_template', '_recipe_settings', '_wp_attachment_image_alt', 'rating', 'ACSC-media');
DELETE FROM wp_termmeta WHERE meta_key IN ('description', 'autodescription-user-settings', '_wp_page_template', '_recipe_settings', '_wp_attachment_image_alt', 'rating', 'ACSC-media');
DELETE FROM wp_commentmeta WHERE meta_key IN ('description', 'autodescription-user-settings', '_wp_page_template', '_recipe_settings', '_wp_attachment_image_alt', 'rating', 'ACSC-media');

