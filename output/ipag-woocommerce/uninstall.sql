-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ipag-gateway_settings', 'woocommerce_hold_stock_minutes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_message', '_metodo', '_transaction_id', '_operator_message', '_installment_number', '_card_type', '_card_type_second_card', '_status_payment', '_billet_url', '_last_payment_sub', 'ipag_subscription_id', '_digitable_line', '_due_date', '_qr_code', '_transaction_id_second_card', '_transaction_message_second_card', '_operator_message_second_card', '_installment_number_second_card', '_status_payment_second_card', '_billet_url_second_card', '_last_payment_sub_second_card', 'billing_cpf', 'billing_cnpj', '_venc_date', '_card_bin', '_card_end', '_card_masked', '_card_exp_month', '_card_exp_year', '_card_name', '_card_cpf', '_auth_url', '_card_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_message', '_metodo', '_transaction_id', '_operator_message', '_installment_number', '_card_type', '_card_type_second_card', '_status_payment', '_billet_url', '_last_payment_sub', 'ipag_subscription_id', '_digitable_line', '_due_date', '_qr_code', '_transaction_id_second_card', '_transaction_message_second_card', '_operator_message_second_card', '_installment_number_second_card', '_status_payment_second_card', '_billet_url_second_card', '_last_payment_sub_second_card', 'billing_cpf', 'billing_cnpj', '_venc_date', '_card_bin', '_card_end', '_card_masked', '_card_exp_month', '_card_exp_year', '_card_name', '_card_cpf', '_auth_url', '_card_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_message', '_metodo', '_transaction_id', '_operator_message', '_installment_number', '_card_type', '_card_type_second_card', '_status_payment', '_billet_url', '_last_payment_sub', 'ipag_subscription_id', '_digitable_line', '_due_date', '_qr_code', '_transaction_id_second_card', '_transaction_message_second_card', '_operator_message_second_card', '_installment_number_second_card', '_status_payment_second_card', '_billet_url_second_card', '_last_payment_sub_second_card', 'billing_cpf', 'billing_cnpj', '_venc_date', '_card_bin', '_card_end', '_card_masked', '_card_exp_month', '_card_exp_year', '_card_name', '_card_cpf', '_auth_url', '_card_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_message', '_metodo', '_transaction_id', '_operator_message', '_installment_number', '_card_type', '_card_type_second_card', '_status_payment', '_billet_url', '_last_payment_sub', 'ipag_subscription_id', '_digitable_line', '_due_date', '_qr_code', '_transaction_id_second_card', '_transaction_message_second_card', '_operator_message_second_card', '_installment_number_second_card', '_status_payment_second_card', '_billet_url_second_card', '_last_payment_sub_second_card', 'billing_cpf', 'billing_cnpj', '_venc_date', '_card_bin', '_card_end', '_card_masked', '_card_exp_month', '_card_exp_year', '_card_name', '_card_cpf', '_auth_url', '_card_token');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_card_type%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_card_type%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_card_type%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_card_type%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_card_bin%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_card_bin%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_card_bin%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_card_bin%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_card_end%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_card_end%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_card_end%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_card_end%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_card_masked%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_card_masked%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_card_masked%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_card_masked%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_card_exp_month%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_card_exp_month%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_card_exp_month%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_card_exp_month%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_card_exp_year%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_card_exp_year%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_card_exp_year%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_card_exp_year%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_card_name%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_card_name%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_card_name%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_card_name%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_transaction_id%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_transaction_id%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_transaction_id%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_transaction_id%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_transaction_message%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_transaction_message%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_transaction_message%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_transaction_message%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_operator_message%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_operator_message%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_operator_message%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_operator_message%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_installment_number%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_installment_number%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_installment_number%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_installment_number%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_status_payment%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_status_payment%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_status_payment%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_status_payment%';

