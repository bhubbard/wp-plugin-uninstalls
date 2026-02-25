-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('artemis_payment_gateway_plugin_activation_time', 'void_spare_me', 'woocommerce_currency', 'woocommerce_agp_settings', 'agp_token_api', 'agp_token_api_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('OrderTransactionHash', '_expired_payment', 'agp_transaction_memo', 'agp_choosen_payment', 'agp_choosen_payment_value', 'agp_choosen_payment_currency', '_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('OrderTransactionHash', '_expired_payment', 'agp_transaction_memo', 'agp_choosen_payment', 'agp_choosen_payment_value', 'agp_choosen_payment_currency', '_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('OrderTransactionHash', '_expired_payment', 'agp_transaction_memo', 'agp_choosen_payment', 'agp_choosen_payment_value', 'agp_choosen_payment_currency', '_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('OrderTransactionHash', '_expired_payment', 'agp_transaction_memo', 'agp_choosen_payment', 'agp_choosen_payment_value', 'agp_choosen_payment_currency', '_payment_method');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sale_price';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sale_price';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sale_price';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sale_price';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sale_price_dates_from';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sale_price_dates_from';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sale_price_dates_from';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sale_price_dates_from';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sale_price_dates_to';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sale_price_dates_to';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sale_price_dates_to';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sale_price_dates_to';

