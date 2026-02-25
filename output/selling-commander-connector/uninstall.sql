-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scconn_deleted_products_log', 'scconn_allowed_plugins', 'scconn_settings', 'default_product_cat', 'scconn_deleted_posts_log', 'PELM_SETTINGS', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_subscription_renewal', '_scconn_username', '_scconn_api_token', 'wp_user_level');
DELETE FROM wp_usermeta WHERE meta_key IN ('_subscription_renewal', '_scconn_username', '_scconn_api_token', 'wp_user_level');
DELETE FROM wp_termmeta WHERE meta_key IN ('_subscription_renewal', '_scconn_username', '_scconn_api_token', 'wp_user_level');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_subscription_renewal', '_scconn_username', '_scconn_api_token', 'wp_user_level');

