-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pacsoft_on_order_status', 'pacsoft_sync_with_options', 'pacsoft_track_link_on_order_status', 'pacsoft_logfile_activated', 'pacsoft_track_link_in_email', 'pacsoft_license_key', 'pacsoft_services', 'pacsoft_base_country', 'pacsoft_account_type', 'pacsoft_usern_unif', 'pacsoft_api_id', 'pacsoft_api_secret_id', 'pacsoft_pass_unif', 'pacsoft_addon_sms', 'pacsoft_addon_enot', 'pacsoft_single_package_per_order', 'pacsoft_print_freight_label_per_item', 'pacsoft_default_product_type', 'pacsoft_default_sender_quick_id', 'pacsoft_favorite', 'woocommerce_email_from_address', 'pacsoft_print_return_labels', 'pacsoft_customs_declaration_document_number', 'pacsoft_customs_import_export_type', 'woocommerce_weight_unit', 'pacsoft_customs_other_unit', 'woocommerce_default_country', 'pacsoft_test_mode', 'pacsoft_addon_notemail', 'pacsoft_send_customs_declaration', 'pacsoft_customs_declaration_cart_threshold', 'woocommerce_dimension_unit', 'pacsoft_default_minimum_order_weight', 'pacsoft_printer_type', 'pacsoft_order_number_prefix');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pacsoft_order_synced', 'unifaun_customs_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pacsoft_order_synced', 'unifaun_customs_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pacsoft_order_synced', 'unifaun_customs_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pacsoft_order_synced', 'unifaun_customs_code');

