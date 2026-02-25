-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%currencies';
DELETE FROM wp_options WHERE option_name LIKE '%disabled_js_calc';
DELETE FROM wp_options WHERE option_name LIKE '%disalbe_origin_inv_generator';
DELETE FROM wp_options WHERE option_name LIKE '%quantity_types';
DELETE FROM wp_options WHERE option_name LIKE '%payment_methods';
DELETE FROM wp_options WHERE option_name LIKE '%invoices_num_length';
DELETE FROM wp_options WHERE option_name LIKE '%count_decimal_digits';
DELETE FROM wp_options WHERE option_name LIKE '%disabled_items_update_quantity_on_create';
DELETE FROM wp_options WHERE option_name LIKE '%disabled_items_update_quantity_on_edit';
DELETE FROM wp_options WHERE option_name LIKE '%auto_create_inv';
DELETE FROM wp_options WHERE option_name LIKE '%dates_format_type';
DELETE FROM wp_options WHERE option_name LIKE '%numbers_format_system';
DELETE FROM wp_options WHERE option_name LIKE '%currency_placement';
DELETE FROM wp_options WHERE option_name LIKE '%disable_auto_fill_compiled_field';
DELETE FROM wp_options WHERE option_name LIKE '%show_schiffer_field_in_invoices';
DELETE FROM wp_options WHERE option_name LIKE '%default_discount';
DELETE FROM wp_options WHERE option_name LIKE '%default_discount_type';
DELETE FROM wp_options WHERE option_name LIKE '%default_no_vat';
DELETE FROM wp_options WHERE option_name LIKE '%default_vat_percent';
DELETE FROM wp_options WHERE option_name LIKE '%default_vat_reason';
DELETE FROM wp_options WHERE option_name LIKE '%default_remarks';
DELETE FROM wp_options WHERE option_name LIKE '%current_template';
DELETE FROM wp_options WHERE option_name LIKE '%logo_file';
DELETE FROM wp_options WHERE option_name LIKE '%hide_logo_from_invoices';
DELETE FROM wp_options WHERE option_name LIKE '%company_name';
DELETE FROM wp_options WHERE option_name LIKE '%company_vat_registered';
DELETE FROM wp_options WHERE option_name LIKE '%company_vat_number';
DELETE FROM wp_options WHERE option_name LIKE '%company_address';
DELETE FROM wp_options WHERE option_name LIKE '%company_city';
DELETE FROM wp_options WHERE option_name LIKE '%company_zip_code';
DELETE FROM wp_options WHERE option_name LIKE '%company_accountable_person';
DELETE FROM wp_options WHERE option_name LIKE '%api_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%api_token';
DELETE FROM wp_options WHERE option_name LIKE '%enable_shortcode_prev_inv';
DELETE FROM wp_options WHERE option_name LIKE '%custom_smtp_auth';
DELETE FROM wp_options WHERE option_name LIKE '%premium_version';
DELETE FROM wp_options WHERE option_name LIKE '%stripe_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%stripe_public_key';
DELETE FROM wp_options WHERE option_name LIKE '%stripe_secret_key';
DELETE FROM wp_options WHERE option_name LIKE '%wc_mark_order_as_paid_when_invoice_is_paid';
DELETE FROM wp_options WHERE option_name LIKE '%create_inv_when';

