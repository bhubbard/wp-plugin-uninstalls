-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id', 'kms');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kount_account_status', 'kount_login_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('kount_account_status', 'kount_login_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('kount_account_status', 'kount_login_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kount_account_status', 'kount_login_status');

