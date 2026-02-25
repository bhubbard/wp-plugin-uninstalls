-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_default_country', 'woocommerce_calc_taxes', 'woocommerce_prices_include_tax', 'woocommerce_tax_display_shop', 'woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', '_globale_ClearCart', '_regular_price', '_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', '_globale_ClearCart', '_regular_price', '_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', '_globale_ClearCart', '_regular_price', '_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', '_globale_ClearCart', '_regular_price', '_sale_price');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_company';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_company';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_company';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_company';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_1';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_1';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_1';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_1';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_postcode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_postcode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_postcode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_postcode';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_phone';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_phone';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_phone';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_phone';

