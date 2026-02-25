-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('syncy_square_selected_location', 'syncy_autosyncwootosquare', 'syncy_autosyncsquaretowoo', 'syncy_autosync_orders', 'syncy_autosync_users', 'syncy_autosync_order_status', 'syncy_square_to_woo_product_attributes', 'syncy_woo_to_square_product_attributes', 'syncy_sandbox_mode', 'syncy_square_access_token', 'woocommerce_default_country');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('syncy_square_catalog_object_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('syncy_square_catalog_object_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('syncy_square_catalog_object_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('syncy_square_catalog_object_id');

