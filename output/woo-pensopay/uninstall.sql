-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_pensopay_settings', 'woocommerce_thanks_page_id', 'woocommerce_cart_page_id', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'woocommerce_pensopay_version', 'woocommerce_pensopay_maintenance', 'woocommerce_email_footer_text', 'active_sitewide_plugins', 'woocommerce_myaccount_page_id', '_wcpp_admin_notices', '_wcpp_admin_runtime_errors');
DELETE FROM wp_options WHERE option_name LIKE '%_turn_off_automatic_payments';
DELETE FROM wp_options WHERE option_name LIKE 'wcpp_transaction_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_id', 'TRANSACTION_ID', 'success', 'errors');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_id', 'TRANSACTION_ID', 'success', 'errors');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_id', 'TRANSACTION_ID', 'success', 'errors');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_id', 'TRANSACTION_ID', 'success', 'errors');

