-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcisoe_auth_premium', 'mcisoe_email_subject', 'mcisoe_email_intro', 'mcisoe_select_email_admin', 'mcisoe_replace_address', 'mcisoe_delete_all_data', 'mcisoe_header_color', 'mcisoe_store_logo', 'mcisoe_hide_customer', 'mcisoe_show_customer_email', 'mcisoe_show_customer_phone', 'mcisoe_show_shortdesc', 'mcisoe_show_ean', 'mcisoe_show_notes', 'mcisoe_show_order_total', 'mcisoe_show_payment_method', 'mcisoe_show_shipping_method', 'mcisoe_show_price_items', 'mcisoe_show_order_number', 'mcisoe_show_product_attributes', 'mcisoe_show_product_meta', 'mcisoe_show_cost_prices', 'mcisoe_show_cost_total', 'mcisoe_attach_pdf', 'mcisoe_store_pdf', 'mcisoe_company_info', 'mcisoe_special_meta', 'mcisoe_email_copy', 'mcisoe_from_email', 'mcisoe_email_trigger', 'mcisoe_cancel_all_emails', 'mcisoe_show_product_img', 'mcisoe_product_img_width', 'mcisoe_show_weight', 'mcisoe_auth_lemon', 'mcisoe_auth_mciapi', 'mcisoe_new_structure_2_0', 'mci_pay_email', 'woocommerce_currency_pos', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'woocommerce_price_num_decimals', 'mci_pay_code_key', 'mci_user_pass', 'mci_auth_premium', 'mcisoe_manual_auth', 'woocommerce_weight_unit', 'orddd_lite_delivery_date_field_label', 'woocommerce_store_address', 'woocommerce_store_postcode');
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_city', 'woocommerce_default_country', 'mcisoe_version', 'mci_api_key');
DELETE FROM wp_options WHERE option_name LIKE '%_auth_premium';
DELETE FROM wp_options WHERE option_name LIKE '%_lemon_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%_lemon_instance_id';
DELETE FROM wp_options WHERE option_name LIKE 'mcisoe_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mcisoe_supplier_email', 'mcisoe_supplier_custom_text', 'mcisoe_supplier_data_text', '_delivery_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('mcisoe_supplier_email', 'mcisoe_supplier_custom_text', 'mcisoe_supplier_data_text', '_delivery_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('mcisoe_supplier_email', 'mcisoe_supplier_custom_text', 'mcisoe_supplier_data_text', '_delivery_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mcisoe_supplier_email', 'mcisoe_supplier_custom_text', 'mcisoe_supplier_data_text', '_delivery_date');

