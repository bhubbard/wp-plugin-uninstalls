-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('order_guid', 'session_url', 'zc_response', 'zc_payment_token', 'zc_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('order_guid', 'session_url', 'zc_response', 'zc_payment_token', 'zc_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('order_guid', 'session_url', 'zc_response', 'zc_payment_token', 'zc_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('order_guid', 'session_url', 'zc_response', 'zc_payment_token', 'zc_transaction_id');

