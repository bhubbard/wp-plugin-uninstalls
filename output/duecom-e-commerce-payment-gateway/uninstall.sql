-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_due_token_id', 'billing_first_name', 'billing_last_name', 'billing_postcode', '_due_transaction_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_due_token_id', 'billing_first_name', 'billing_last_name', 'billing_postcode', '_due_transaction_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_due_token_id', 'billing_first_name', 'billing_last_name', 'billing_postcode', '_due_transaction_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_due_token_id', 'billing_first_name', 'billing_last_name', 'billing_postcode', '_due_transaction_data');

