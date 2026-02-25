-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'woocommerce_price_num_decimals', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'woocommerce_tax_classes', 'woocommerce_tax_based_on', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'VIES_WSDL');
DELETE FROM wp_options WHERE option_name LIKE 'aelia_dismissed_messages_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vat_number', '_vat_country', '_vat_number_validated');
DELETE FROM wp_usermeta WHERE meta_key IN ('vat_number', '_vat_country', '_vat_number_validated');
DELETE FROM wp_termmeta WHERE meta_key IN ('vat_number', '_vat_country', '_vat_number_validated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vat_number', '_vat_country', '_vat_number_validated');

