-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lknCieloProApiLicense', 'woocommerce_lkn_cielo_debit_settings', 'woocommerce_lkn_cielo_credit_settings', 'woocommerce_lkn_wc_cielo_pix_settings', 'woocommerce_lkn_cielo_google_pay_settings', 'lkn_cielo_pro_license_boolean', 'woocommerce_currency_pos', 'wcbcf_settings', 'cielo_wc_pix_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lknCieloApiProProdutctInterest', 'card_array', 'default_card', 'billing_cpf', 'billing_cnpj', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('lknCieloApiProProdutctInterest', 'card_array', 'default_card', 'billing_cpf', 'billing_cnpj', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('lknCieloApiProProdutctInterest', 'card_array', 'default_card', 'billing_cpf', 'billing_cnpj', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lknCieloApiProProdutctInterest', 'card_array', 'default_card', 'billing_cpf', 'billing_cnpj', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country');

