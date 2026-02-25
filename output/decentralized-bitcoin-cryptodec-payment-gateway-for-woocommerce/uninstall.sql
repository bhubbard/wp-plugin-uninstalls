-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cryptodec_best_btc_wallet', '_cryptodec_total', '_cryptodec_transaction_id', '_cryptodec_coin', '_payment_method', 'best_btc_wallet');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cryptodec_best_btc_wallet', '_cryptodec_total', '_cryptodec_transaction_id', '_cryptodec_coin', '_payment_method', 'best_btc_wallet');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cryptodec_best_btc_wallet', '_cryptodec_total', '_cryptodec_transaction_id', '_cryptodec_coin', '_payment_method', 'best_btc_wallet');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cryptodec_best_btc_wallet', '_cryptodec_total', '_cryptodec_transaction_id', '_cryptodec_coin', '_payment_method', 'best_btc_wallet');

