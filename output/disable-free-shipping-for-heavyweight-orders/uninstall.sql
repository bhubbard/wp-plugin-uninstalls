-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dfsh_bypass_coupons', 'dfsh_bypass_roles', 'dfsh_schedule_enabled', 'dfsh_schedule_start', 'dfsh_schedule_end', 'dfsh_category_thresholds', 'dfsh_enabled', 'dfsh_weight_limit', 'dfsh_subtotal_limit', 'dfsh_item_count_limit', 'dfsh_dimension_limit', 'dfsh_zone_thresholds_array', 'dfsh_class_thresholds_array', 'dfsh_action', 'dfsh_shipping_methods', 'dfsh_frontend_message', 'dfsh_admin_notification', 'dfsh_last_notification_time', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dfsh_override_shipping_restriction', '_dfsh_product_weight_limit');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dfsh_override_shipping_restriction', '_dfsh_product_weight_limit');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dfsh_override_shipping_restriction', '_dfsh_product_weight_limit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dfsh_override_shipping_restriction', '_dfsh_product_weight_limit');

