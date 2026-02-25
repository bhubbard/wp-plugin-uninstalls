-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_squad_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_squad_token', '_squad_txn_ref', '_transaction_id', '_order_currency');
DELETE FROM wp_usermeta WHERE meta_key IN ('_squad_token', '_squad_txn_ref', '_transaction_id', '_order_currency');
DELETE FROM wp_termmeta WHERE meta_key IN ('_squad_token', '_squad_txn_ref', '_transaction_id', '_order_currency');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_squad_token', '_squad_txn_ref', '_transaction_id', '_order_currency');

