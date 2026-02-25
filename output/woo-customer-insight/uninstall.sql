-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shop_page_id', 'woocommerce_myaccount_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('loginTime', 'login_user_ip', 'logoutTime', 'logout_user_ip');
DELETE FROM wp_usermeta WHERE meta_key IN ('loginTime', 'login_user_ip', 'logoutTime', 'logout_user_ip');
DELETE FROM wp_termmeta WHERE meta_key IN ('loginTime', 'login_user_ip', 'logoutTime', 'logout_user_ip');
DELETE FROM wp_commentmeta WHERE meta_key IN ('loginTime', 'login_user_ip', 'logoutTime', 'logout_user_ip');

