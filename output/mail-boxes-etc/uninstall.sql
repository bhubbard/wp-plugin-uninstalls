-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'mbe_shipping_wp_admin_messages', 'mbe_elink_db_version', 'cron', 'mbe_shipping_admin_messages');
DELETE FROM wp_options WHERE option_name LIKE '%_set_options_default';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipping_method_title', 'woocommerce_mbe_tracking_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipping_method_title', 'woocommerce_mbe_tracking_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipping_method_title', 'woocommerce_mbe_tracking_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipping_method_title', 'woocommerce_mbe_tracking_name');

