-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hc_wcma_checkout_selector_style', 'hc_wcma_checkout_allow_new_address', 'hc_wcma_limit_max_billing_addresses', 'hc_wcma_limit_max_shipping_addresses', 'hc_wcma_checkout_saved_address_display', 'hc_wcma_my_account_menu_item_text', 'hc_wcma_my_account_address_display_style', 'woocommerce_checkout_phone_field', 'woocommerce_checkout_company_field', 'woocommerce_checkout_address_2_field');
DELETE FROM wp_options WHERE option_name LIKE '%_addresses';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hc_wcma_selected_billing_address_snapshot', '_hc_wcma_selected_shipping_address_snapshot', '_hc_wcma_billing_addresses', '_hc_wcma_shipping_addresses');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hc_wcma_selected_billing_address_snapshot', '_hc_wcma_selected_shipping_address_snapshot', '_hc_wcma_billing_addresses', '_hc_wcma_shipping_addresses');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hc_wcma_selected_billing_address_snapshot', '_hc_wcma_selected_shipping_address_snapshot', '_hc_wcma_billing_addresses', '_hc_wcma_shipping_addresses');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hc_wcma_selected_billing_address_snapshot', '_hc_wcma_selected_shipping_address_snapshot', '_hc_wcma_billing_addresses', '_hc_wcma_shipping_addresses');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_key';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_key';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_key';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_key';

