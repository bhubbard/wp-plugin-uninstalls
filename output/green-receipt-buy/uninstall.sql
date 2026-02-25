-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_postcode', 'greenreceipt_notifications_option_name', 'greenreceipt_store_category', 'greenreceipt_plugin_do_activation_redirect', 'greenreceipt_notifications_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'admin_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'admin_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'admin_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'admin_phone');

