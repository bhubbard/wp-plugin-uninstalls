-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_monnify_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_monnify_save_card', '_monnify_txn_refs');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_monnify_save_card', '_monnify_txn_refs');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_monnify_save_card', '_monnify_txn_refs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_monnify_save_card', '_monnify_txn_refs');

