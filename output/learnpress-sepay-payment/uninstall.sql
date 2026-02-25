-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('learnpress_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sepay_transaction_ids', 'sepay_paid_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('sepay_transaction_ids', 'sepay_paid_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('sepay_transaction_ids', 'sepay_paid_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sepay_transaction_ids', 'sepay_paid_amount');

