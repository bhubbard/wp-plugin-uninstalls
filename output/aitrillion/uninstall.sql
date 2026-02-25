-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_aitrillion_api_key', '_aitrillion_api_password', '_aitrillion_script_url', '_aitrillion_affiliate_module', '_aitrillion_created_orders', '_aitrillion_updated_orders', 'woocommerce_weight_unit', 'aitrillion_data_sync_schedule_time', '_aitrillion_created_users', '_aitrillion_failed_sync_users', '_aitrillion_updated_users', '_aitrillion_deleted_users', '_aitrillion_created_products', '_aitrillion_failed_sync_products', '_aitrillion_updated_products', '_aitrillion_deleted_products', '_aitrillion_created_categories', '_aitrillion_failed_sync_categories', '_aitrillion_updated_categories', '_aitrillion_deleted_categories', '_aitrillion_failed_sync_orders', '_aitrillion_deleted_orders', '_aitrillion_failed_sync_order', '_aitrillion_shop_updated', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'woocommerce_store_address', 'woocommerce_store_address_2', '_aitrillion_script_version', '_aitrillion_block_loyalty_members');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_aitrillion_user_sync', '_aitrillion_product_sync', '_aitrillion_category_sync', '_aitrillion_order_sync', '_aitrillion_sync_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_aitrillion_user_sync', '_aitrillion_product_sync', '_aitrillion_category_sync', '_aitrillion_order_sync', '_aitrillion_sync_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_aitrillion_user_sync', '_aitrillion_product_sync', '_aitrillion_category_sync', '_aitrillion_order_sync', '_aitrillion_sync_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_aitrillion_user_sync', '_aitrillion_product_sync', '_aitrillion_category_sync', '_aitrillion_order_sync', '_aitrillion_sync_date');

