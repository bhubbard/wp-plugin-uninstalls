-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_zahls_settings', 'woocommerce_zahls_description', 'woocommerce_zahls_instance', 'woocommerce_zahls_sid', 'woocommerce_zahls_prefix', 'woocommerce_zahls_logos', 'woocommerce_zahls_subscriptions_title', 'woocommerce_zahls_subscriptions_user_desc', 'woocommerce_zahls_subscription_logos', 'woocommerce_prices_include_tax');
DELETE FROM wp_options WHERE option_name LIKE '%_accept_manual_renewals';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zahls_auth_transaction_id', 'zahls_gateway_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('zahls_auth_transaction_id', 'zahls_gateway_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('zahls_auth_transaction_id', 'zahls_gateway_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zahls_auth_transaction_id', 'zahls_gateway_id');

