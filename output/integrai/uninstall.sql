-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_integrai-settings_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method', '_integrai_transaction_data', 'payment_response', 'marketplace', 'payments');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method', '_integrai_transaction_data', 'payment_response', 'marketplace', 'payments');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method', '_integrai_transaction_data', 'payment_response', 'marketplace', 'payments');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method', '_integrai_transaction_data', 'payment_response', 'marketplace', 'payments');

