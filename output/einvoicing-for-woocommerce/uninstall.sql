-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooei_version', 'wooei_customizations', 'wooei_invoice_type', 'wooei_invoice_filename_format', 'wooei_invoice_attach_invoice', 'wooei_invoice_attach', 'wooei_company_name', 'wooei_id_type', 'wooei_id_company', 'wooei_shop_phone', 'wooei_shop_email', 'wooei_id_vat', 'wooei_msic_code', 'wooei_msic_name', 'wooei_numbering_strategy', 'wooei_generate_pending_invoices', 'wooei_invoice_reset_number', 'wooei_invoice_number_padding', 'wooei_invoice_number_format', 'wooei_last_invoice_number', 'wooei_last_invoice_date', 'woocommerce_weight_unit', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wooei_just_activated', 'wooei_just_upgraded', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_customizations';
DELETE FROM wp_options WHERE option_name LIKE '%_override_last_invoice_number';
DELETE FROM wp_options WHERE option_name LIKE '%_last_invoice_number';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_invoice_number', 'wooei_commodity_classification');
DELETE FROM wp_usermeta WHERE meta_key IN ('_invoice_number', 'wooei_commodity_classification');
DELETE FROM wp_termmeta WHERE meta_key IN ('_invoice_number', 'wooei_commodity_classification');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_invoice_number', 'wooei_commodity_classification');

