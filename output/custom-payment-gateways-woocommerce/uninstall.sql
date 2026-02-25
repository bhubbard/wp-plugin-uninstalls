-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'alg_wc_custom_payment_gateways_version', 'alg_wc_custom_payment_gateways_enabled', 'alg_wc_cpg_input_fields_enabled', 'alg_wc_cpg_fees_enabled', 'alg_wc_cpg_fees_cart_total_taxes', 'alg_wc_cpg_fees_cart_total_shipping', 'alg_wc_cpg_fees_cart_total_discounts', 'woocommerce_default_gateway', 'alg_wc_cpg_input_fields_woe_enabled', 'alg_wc_cpg_input_fields_woe_template', 'alg_wc_cpg_input_fields_woe_glue', 'alg_wc_cpg_input_fields_add_to_emails', 'alg_wc_cpg_input_fields_add_to_emails_sent_to', 'alg_wc_cpg_input_fields_add_to_emails_template_plain', 'alg_wc_cpg_input_fields_add_to_emails_template', 'alg_wc_cpg_input_fields_add_to_order_details', 'alg_wc_cpg_input_fields_add_to_order_details_template', 'alg_wc_cpg_input_fields_add_order_note', 'img_cpg_orders', 'woocommerce_version', 'alg_wc_cpg_load_shipping_method_instances');
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_custom_payment_gateways_admin_title_%';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_alg_wc_cpg_input_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('_alg_wc_cpg_input_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('_alg_wc_cpg_input_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_alg_wc_cpg_input_fields');

