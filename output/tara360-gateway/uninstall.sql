-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tara360_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tara360_return_nonce', 'tara360_track_id', 'tara360_transaction_status', 'tara360_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tara360_return_nonce', 'tara360_track_id', 'tara360_transaction_status', 'tara360_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tara360_return_nonce', 'tara360_track_id', 'tara360_transaction_status', 'tara360_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tara360_return_nonce', 'tara360_track_id', 'tara360_transaction_status', 'tara360_transaction_id');

