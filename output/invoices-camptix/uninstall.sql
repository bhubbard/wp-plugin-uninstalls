-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('camptix_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('invoice_number', 'auth', 'original_order', 'invoice_metas', 'tix_order', 'tix_email', 'tix_transaction_id', 'transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('invoice_number', 'auth', 'original_order', 'invoice_metas', 'tix_order', 'tix_email', 'tix_transaction_id', 'transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('invoice_number', 'auth', 'original_order', 'invoice_metas', 'tix_order', 'tix_email', 'tix_transaction_id', 'transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('invoice_number', 'auth', 'original_order', 'invoice_metas', 'tix_order', 'tix_email', 'tix_transaction_id', 'transaction_id');

