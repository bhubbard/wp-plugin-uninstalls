-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hillapay_payCode', '_billing_phone', 'woo_hillapay_amount_wage', 'woo_hillapay_amount_merchant', 'woo_hillapay_transaction_id', 'woo_hillapay_rrn', 'card', '_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hillapay_payCode', '_billing_phone', 'woo_hillapay_amount_wage', 'woo_hillapay_amount_merchant', 'woo_hillapay_transaction_id', 'woo_hillapay_rrn', 'card', '_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hillapay_payCode', '_billing_phone', 'woo_hillapay_amount_wage', 'woo_hillapay_amount_merchant', 'woo_hillapay_transaction_id', 'woo_hillapay_rrn', 'card', '_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hillapay_payCode', '_billing_phone', 'woo_hillapay_amount_wage', 'woo_hillapay_amount_merchant', 'woo_hillapay_transaction_id', 'woo_hillapay_rrn', 'card', '_transaction_id');

