-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pgppw_activation_time', 'pgppw_review_notice_hide_v1', 'pgppw_next_show_time', 'pgppw_oauth_token_live', 'pgppw_oauth_token_sandbox', 'easy_pgppw_for_woocommerce_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_phonepe_refund_txn_id', '_phonepe_merchant_refund_txn_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_phonepe_refund_txn_id', '_phonepe_merchant_refund_txn_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_phonepe_refund_txn_id', '_phonepe_merchant_refund_txn_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_phonepe_refund_txn_id', '_phonepe_merchant_refund_txn_id');

