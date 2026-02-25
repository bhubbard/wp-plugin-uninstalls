-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jal_db_version', 'woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_id', '_uniqueOrderId');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_id', '_uniqueOrderId');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_id', '_uniqueOrderId');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_id', '_uniqueOrderId');

