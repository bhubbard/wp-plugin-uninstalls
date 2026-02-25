-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('appsero_selling_plugin', 'appsero_shortcode_pages_created_at', 'appsero_affiliate_wp_settings', 'appsero_general_settings', 'appsero_connected_products');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('appsero_post_state', '_api_activations', '_software_product_id', 'billing_country', 'billing_state', 'billing_phone', 'billing_image', 'billing_company', 'billing_address_1', 'billing_postcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('appsero_post_state', '_api_activations', '_software_product_id', 'billing_country', 'billing_state', 'billing_phone', 'billing_image', 'billing_company', 'billing_address_1', 'billing_postcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('appsero_post_state', '_api_activations', '_software_product_id', 'billing_country', 'billing_state', 'billing_phone', 'billing_image', 'billing_company', 'billing_address_1', 'billing_postcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('appsero_post_state', '_api_activations', '_software_product_id', 'billing_country', 'billing_state', 'billing_phone', 'billing_image', 'billing_company', 'billing_address_1', 'billing_postcode');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_appsero_order_license_for_product_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_appsero_order_license_for_product_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_appsero_order_license_for_product_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_appsero_order_license_for_product_%';

