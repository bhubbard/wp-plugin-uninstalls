-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tec_tickets_commerce_paystack_account');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('paystack_split_type', 'paystack_sub_account', 'paystack_split_transaction');
DELETE FROM wp_usermeta WHERE meta_key IN ('paystack_split_type', 'paystack_sub_account', 'paystack_split_transaction');
DELETE FROM wp_termmeta WHERE meta_key IN ('paystack_split_type', 'paystack_sub_account', 'paystack_split_transaction');
DELETE FROM wp_commentmeta WHERE meta_key IN ('paystack_split_type', 'paystack_sub_account', 'paystack_split_transaction');

