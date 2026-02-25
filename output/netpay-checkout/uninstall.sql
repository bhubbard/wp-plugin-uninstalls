-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_netpay_payment_method', '_netpay_thankyou_action_done', '_transaction_token_id', '_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_netpay_payment_method', '_netpay_thankyou_action_done', '_transaction_token_id', '_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_netpay_payment_method', '_netpay_thankyou_action_done', '_transaction_token_id', '_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_netpay_payment_method', '_netpay_thankyou_action_done', '_transaction_token_id', '_transaction_id');

