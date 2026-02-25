-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_flip_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_flip_sender_bank_type', '_flip_sender_bank_name', '_flip_account_refund_bank', '_flip_account_refund_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_flip_sender_bank_type', '_flip_sender_bank_name', '_flip_account_refund_bank', '_flip_account_refund_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_flip_sender_bank_type', '_flip_sender_bank_name', '_flip_account_refund_bank', '_flip_account_refund_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_flip_sender_bank_type', '_flip_sender_bank_name', '_flip_account_refund_bank', '_flip_account_refund_number');

