-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'woocommerce_weight_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_general_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_invoice_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_packing_slip_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_shipping_label_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_delivery_note_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_dispatch_label_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_invoice_active_template_id';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_invoice_template';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_invoice_template';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_invoice_template';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_invoice_template';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_invoice_template_status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_invoice_template_status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_invoice_template_status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_invoice_template_status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_invnum_not_formatted_flag';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_invnum_not_formatted_flag';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_invnum_not_formatted_flag';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_invnum_not_formatted_flag';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ord_invoice_no';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ord_invoice_no';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ord_invoice_no';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ord_invoice_no';

