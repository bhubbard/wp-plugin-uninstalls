-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fluent_cart_payment_methods_order', 'rewrite_rules', 'fluent_cart_do_activation_redirect', 'fluent_cart_plugin_once_activated', 'fluent_cart_tax_configuration_settings', 'fluent_cart_store_settings', '__fluent_cart_edd2_migration_steps', '_fluent_edd_failed_payment_logs', 'woocommerce_custom_orders_table_enabled', 'fluent_cart_has_tax_configure', '__fluent_cart_wc_migration_steps', '__fluent_cart_wc_category_map', '__fluent_cart_wc_attachment_map', '__fluent_cart_wc_brand_map', '_fluent_wc_failed_migration_logs', '_fluent_cart_db_version', 'siteUrl', 'update_plugins', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'fluent_cart_snapshot_job_%';
DELETE FROM wp_options WHERE option_name LIKE 'fc_bx_collection_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', '_thumbnail_id', 'fc_customer_photo_url', 'fluent-products-gallery-image', '_fluent_cart_admin_role', '_product_type', '_product_image_gallery', '_downloadable_files', '_stock_status', '_manage_stock', '_stock', '_backorders', 'locale', 'default_password_nag', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', '_thumbnail_id', 'fc_customer_photo_url', 'fluent-products-gallery-image', '_fluent_cart_admin_role', '_product_type', '_product_image_gallery', '_downloadable_files', '_stock_status', '_manage_stock', '_stock', '_backorders', 'locale', 'default_password_nag', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', '_thumbnail_id', 'fc_customer_photo_url', 'fluent-products-gallery-image', '_fluent_cart_admin_role', '_product_type', '_product_image_gallery', '_downloadable_files', '_stock_status', '_manage_stock', '_stock', '_backorders', 'locale', 'default_password_nag', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', '_thumbnail_id', 'fc_customer_photo_url', 'fluent-products-gallery-image', '_fluent_cart_admin_role', '_product_type', '_product_image_gallery', '_downloadable_files', '_stock_status', '_manage_stock', '_stock', '_backorders', 'locale', 'default_password_nag', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gallery-image';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gallery-image';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gallery-image';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gallery-image';

