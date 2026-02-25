-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_valsto_merchant_access_token', 'wc_valsto_merchant_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_valsto_transaction_id', '_order_total', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_valsto_transaction_id', '_order_total', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_valsto_transaction_id', '_order_total', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_valsto_transaction_id', '_order_total', '_price');

