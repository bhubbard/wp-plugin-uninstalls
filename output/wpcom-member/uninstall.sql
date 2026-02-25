-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmx_options', 'izt_theme_options', 'woocommerce_myaccount_orders_endpoint', 'woocommerce_myaccount_downloads_endpoint', 'woocommerce_myaccount_edit_address_endpoint', 'woocommerce_myaccount_view_order_endpoint', 'wxmp_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcom_avatar', 'wpcom_wpadmin', 'wpcom_adminbar', 'wpcom_sys_role', 'wpcom_approve', 'mobile_phone', 'wpcom_cover');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcom_avatar', 'wpcom_wpadmin', 'wpcom_adminbar', 'wpcom_sys_role', 'wpcom_approve', 'mobile_phone', 'wpcom_cover');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcom_avatar', 'wpcom_wpadmin', 'wpcom_adminbar', 'wpcom_sys_role', 'wpcom_approve', 'mobile_phone', 'wpcom_cover');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcom_avatar', 'wpcom_wpadmin', 'wpcom_adminbar', 'wpcom_sys_role', 'wpcom_approve', 'mobile_phone', 'wpcom_cover');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_name';

