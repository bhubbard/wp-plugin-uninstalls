-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_force_ssl_checkout');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method', '_od_pg', '_od_pay_method', '_od_tno', '_od_app_no', '_od_receipt_price', '_od_test', '_od_escrow', '_od_cash_info', '_od_cash', '_payment_method_title', '_order_tmp_inicis', '_od_tax_flag', '_od_currency', '_od_tax_mny', '_od_vat_mny', '_od_free_mny', '_od_bank_account', '_od_bankname', '_od_depositor', '_od_account', 'od_va_date', 'pg_process_price', '_od_vact_data', '_od_receipt_time', '_is_noti', '_od_va_date', '_is_test', '_od_cash_no');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method', '_od_pg', '_od_pay_method', '_od_tno', '_od_app_no', '_od_receipt_price', '_od_test', '_od_escrow', '_od_cash_info', '_od_cash', '_payment_method_title', '_order_tmp_inicis', '_od_tax_flag', '_od_currency', '_od_tax_mny', '_od_vat_mny', '_od_free_mny', '_od_bank_account', '_od_bankname', '_od_depositor', '_od_account', 'od_va_date', 'pg_process_price', '_od_vact_data', '_od_receipt_time', '_is_noti', '_od_va_date', '_is_test', '_od_cash_no');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method', '_od_pg', '_od_pay_method', '_od_tno', '_od_app_no', '_od_receipt_price', '_od_test', '_od_escrow', '_od_cash_info', '_od_cash', '_payment_method_title', '_order_tmp_inicis', '_od_tax_flag', '_od_currency', '_od_tax_mny', '_od_vat_mny', '_od_free_mny', '_od_bank_account', '_od_bankname', '_od_depositor', '_od_account', 'od_va_date', 'pg_process_price', '_od_vact_data', '_od_receipt_time', '_is_noti', '_od_va_date', '_is_test', '_od_cash_no');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method', '_od_pg', '_od_pay_method', '_od_tno', '_od_app_no', '_od_receipt_price', '_od_test', '_od_escrow', '_od_cash_info', '_od_cash', '_payment_method_title', '_order_tmp_inicis', '_od_tax_flag', '_od_currency', '_od_tax_mny', '_od_vat_mny', '_od_free_mny', '_od_bank_account', '_od_bankname', '_od_depositor', '_od_account', 'od_va_date', 'pg_process_price', '_od_vact_data', '_od_receipt_time', '_is_noti', '_od_va_date', '_is_test', '_od_cash_no');

