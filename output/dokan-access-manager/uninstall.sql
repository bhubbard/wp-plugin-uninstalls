-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dokan_access_manager', 'woocommerce_enable_order_comments', 'dam_nav_menus', 'dam_nav_settings_sub');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_customer_ip_address', '_customer_user', '_billing_first_name', '_billing_last_name', '_billing_email', '_billing_phone', 'is_customer_note');
DELETE FROM wp_usermeta WHERE meta_key IN ('_customer_ip_address', '_customer_user', '_billing_first_name', '_billing_last_name', '_billing_email', '_billing_phone', 'is_customer_note');
DELETE FROM wp_termmeta WHERE meta_key IN ('_customer_ip_address', '_customer_user', '_billing_first_name', '_billing_last_name', '_billing_email', '_billing_phone', 'is_customer_note');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_customer_ip_address', '_customer_user', '_billing_first_name', '_billing_last_name', '_billing_email', '_billing_phone', 'is_customer_note');

