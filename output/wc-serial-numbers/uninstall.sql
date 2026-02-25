-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_serial_numbers_revoke_keys', 'wc_serial_numbers_hide_serial_number', 'wc_serial_numbers_dismissed_notices', 'wc_serial_numbers_enable_stock_notification', 'wc_serial_numbers_stock_threshold', 'wc_serial_numbers_notification_recipient', 'wcsn_pkey', 'wc_serial_numbers_install_date', 'woocommerce_serial_numbers_pro_pluginever_license', 'woocommerceserialnumbers_install_time', 'wc_serial_numbers_autocomplete_order', 'wcsn_enable_pdf_invoices', 'wcsn_manage_stocks', 'wc_serial_numbers_disable_software_support', 'wc_serial_numbers_reuse_serial_number', 'active_sitewide_plugins', 'wcsn_products_stock_count', 'wc_serial_numbers_activated', 'wc_serial_numbers_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_serial_number', '_delivery_quantity', '_serial_key_source', '_software_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_serial_number', '_delivery_quantity', '_serial_key_source', '_software_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_serial_number', '_delivery_quantity', '_serial_key_source', '_software_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_serial_number', '_delivery_quantity', '_serial_key_source', '_software_version');

