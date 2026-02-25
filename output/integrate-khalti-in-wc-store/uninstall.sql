-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_new_order_settings', 'woocommerce_khalti_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_khalti_pidx', '_khalti_txn_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_khalti_pidx', '_khalti_txn_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_khalti_pidx', '_khalti_txn_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_khalti_pidx', '_khalti_txn_id');

