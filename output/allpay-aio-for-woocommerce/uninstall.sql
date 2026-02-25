-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_innovext_allpay_aio_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_RtnCode', '_PaymentType', '_MerchantTradeNo', '_ExpireDate', '_PayUse', '_allpay_payment_method', '_payment_bank_code', '_payment_bank_vaccount', '_allpay_cvs_payment_no', '_transaction_id', '_payment_method_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_RtnCode', '_PaymentType', '_MerchantTradeNo', '_ExpireDate', '_PayUse', '_allpay_payment_method', '_payment_bank_code', '_payment_bank_vaccount', '_allpay_cvs_payment_no', '_transaction_id', '_payment_method_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_RtnCode', '_PaymentType', '_MerchantTradeNo', '_ExpireDate', '_PayUse', '_allpay_payment_method', '_payment_bank_code', '_payment_bank_vaccount', '_allpay_cvs_payment_no', '_transaction_id', '_payment_method_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_RtnCode', '_PaymentType', '_MerchantTradeNo', '_ExpireDate', '_PayUse', '_allpay_payment_method', '_payment_bank_code', '_payment_bank_vaccount', '_allpay_cvs_payment_no', '_transaction_id', '_payment_method_title');

