-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_epicpay_transaction_type', '_epicpay_authorize_status', 'first_name', 'last_name', 'billing_postcode', '_epicpay_customer_id', '_client_customer_id', '_capture_transaction_id', '_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_epicpay_transaction_type', '_epicpay_authorize_status', 'first_name', 'last_name', 'billing_postcode', '_epicpay_customer_id', '_client_customer_id', '_capture_transaction_id', '_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_epicpay_transaction_type', '_epicpay_authorize_status', 'first_name', 'last_name', 'billing_postcode', '_epicpay_customer_id', '_client_customer_id', '_capture_transaction_id', '_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_epicpay_transaction_type', '_epicpay_authorize_status', 'first_name', 'last_name', 'billing_postcode', '_epicpay_customer_id', '_client_customer_id', '_capture_transaction_id', '_transaction_id');

