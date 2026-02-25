-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mojoauth_option', 'woocommerce_enable_checkout_login_reminder', 'woocommerce_myaccount_page_id', 'woocommerce_checkout_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mj_user_identifier');
DELETE FROM wp_usermeta WHERE meta_key IN ('mj_user_identifier');
DELETE FROM wp_termmeta WHERE meta_key IN ('mj_user_identifier');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mj_user_identifier');

