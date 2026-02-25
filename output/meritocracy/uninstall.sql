-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cashcred_user_settings', 'cost', 'cashcred_payment_transfer_date', 'cashcred_log_1', 'cashcred_log_counter');
DELETE FROM wp_usermeta WHERE meta_key IN ('cashcred_user_settings', 'cost', 'cashcred_payment_transfer_date', 'cashcred_log_1', 'cashcred_log_counter');
DELETE FROM wp_termmeta WHERE meta_key IN ('cashcred_user_settings', 'cost', 'cashcred_payment_transfer_date', 'cashcred_log_1', 'cashcred_log_counter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cashcred_user_settings', 'cost', 'cashcred_payment_transfer_date', 'cashcred_log_1', 'cashcred_log_counter');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cashcred_log_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cashcred_log_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cashcred_log_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cashcred_log_%';

