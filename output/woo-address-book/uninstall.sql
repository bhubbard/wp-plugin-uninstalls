-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_shipping_calc', 'woo_address_book_billing_save_limit', 'woo_address_book_shipping_save_limit', 'woocommerce_calc_shipping');
DELETE FROM wp_options WHERE option_name LIKE 'woo_address_book_%';
DELETE FROM wp_options WHERE option_name LIKE '%_save_limit';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_address_book', 'shipping_address_1', 'billing_address_1', 'wc_address_book_billing', 'wc_address_book_shipping');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_address_book', 'shipping_address_1', 'billing_address_1', 'wc_address_book_billing', 'wc_address_book_shipping');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_address_book', 'shipping_address_1', 'billing_address_1', 'wc_address_book_billing', 'wc_address_book_shipping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_address_book', 'shipping_address_1', 'billing_address_1', 'wc_address_book_billing', 'wc_address_book_shipping');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_address_book_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_address_book_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_address_book_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_address_book_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_nickname';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_nickname';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_nickname';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_nickname';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_name';
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
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_postcode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_postcode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_postcode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_postcode';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_country';

