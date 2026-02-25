-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_rave_settings', 'autocomplete_order');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_flw_payment_txn_ref', '_rave_wc_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('_flw_payment_txn_ref', '_rave_wc_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('_flw_payment_txn_ref', '_rave_wc_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_flw_payment_txn_ref', '_rave_wc_token');

