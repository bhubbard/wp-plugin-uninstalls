-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_checkout_company_field', 'woocommerce_coming_soon', 'surbma_hc_license_status', 'surbma_hc_license', 'surbma_hc_fields', 'woocommerce_default_country', 'woocommerce_checkout_address_2_field', 'woocommerce_tax_display_cart', 'woocommerce_wc_szamlazz_settings', 'woocommerce_wc_billingo_plus_settings', 'wc_billingo_vat_number_form', 'wc_billingo_vat_number_form_checkbox_custom');
DELETE FROM wp_options WHERE option_name LIKE 'pand-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('surbma_hc_new_dashboard', 'meta-box-order_dashboard', 'reg_accept_pp', 'reg_ip', 'cps_hc_wcgems_payment_methods', 'surbma_hc_product_subtitle', 'billing_tax_number', '_hc_product_price_history', '_hc_product_lowest_price_text', '_hc_product_hide_lowest_price_text', '_hc_productpricehistory_statisticslinkdisplay', '_regular_price', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('surbma_hc_new_dashboard', 'meta-box-order_dashboard', 'reg_accept_pp', 'reg_ip', 'cps_hc_wcgems_payment_methods', 'surbma_hc_product_subtitle', 'billing_tax_number', '_hc_product_price_history', '_hc_product_lowest_price_text', '_hc_product_hide_lowest_price_text', '_hc_productpricehistory_statisticslinkdisplay', '_regular_price', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('surbma_hc_new_dashboard', 'meta-box-order_dashboard', 'reg_accept_pp', 'reg_ip', 'cps_hc_wcgems_payment_methods', 'surbma_hc_product_subtitle', 'billing_tax_number', '_hc_product_price_history', '_hc_product_lowest_price_text', '_hc_product_hide_lowest_price_text', '_hc_productpricehistory_statisticslinkdisplay', '_regular_price', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('surbma_hc_new_dashboard', 'meta-box-order_dashboard', 'reg_accept_pp', 'reg_ip', 'cps_hc_wcgems_payment_methods', 'surbma_hc_product_subtitle', 'billing_tax_number', '_hc_product_price_history', '_hc_product_lowest_price_text', '_hc_product_hide_lowest_price_text', '_hc_productpricehistory_statisticslinkdisplay', '_regular_price', '_price');

