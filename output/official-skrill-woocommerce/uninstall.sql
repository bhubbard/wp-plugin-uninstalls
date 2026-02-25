-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('skrill_completed_status', 'skrill_merchant_id', 'skrill_merchant_account', 'skrill_recipient_desc', 'skrill_logo_url', 'woocommerce_checkout_page_id', 'skrill_secret_word', 'skrill_api_passwd', 'woocommerce_skrill_acc_settings', 'skrill_version');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_manage_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_manage_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_manage_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_manage_stock');

