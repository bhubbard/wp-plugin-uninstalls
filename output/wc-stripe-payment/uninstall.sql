-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpp_authenticated_routes', 'wpp_payments_connect_notice', 'wpp_stripe_version', 'woocommerce_wpp_email_receipt');
DELETE FROM wp_options WHERE option_name LIKE 'stripe_lock_order_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpp_payment_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpp_payment_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpp_payment_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpp_payment_mode');

