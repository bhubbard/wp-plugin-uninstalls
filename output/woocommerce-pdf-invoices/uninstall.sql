-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bewpi_template_settings', 'bewpi_version', 'bewpi_install_date', 'bewpi_general_settings', 'woocommerce_tax_total_display', 'woocommerce_tax_display_cart', 'woocommerce_force_ssl_checkout', 'bewpi-install-date', 'bewpi-admin-notice-activation', 'bewpi_next_invoice_number', 'wpi_dismiss_notice_rate');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bewpi_invoice_date', '_bewpi_invoice_number', '_bewpi_invoice_pdf_path', '_bewpi_formatted_invoice_number', '_bewpi_invoice_year', '_vat_number_is_valid', '_vat_number', '_po_number', 'bewpi_pdf_invoice_sent', '_customer_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bewpi_invoice_date', '_bewpi_invoice_number', '_bewpi_invoice_pdf_path', '_bewpi_formatted_invoice_number', '_bewpi_invoice_year', '_vat_number_is_valid', '_vat_number', '_po_number', 'bewpi_pdf_invoice_sent', '_customer_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bewpi_invoice_date', '_bewpi_invoice_number', '_bewpi_invoice_pdf_path', '_bewpi_formatted_invoice_number', '_bewpi_invoice_year', '_vat_number_is_valid', '_vat_number', '_po_number', 'bewpi_pdf_invoice_sent', '_customer_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bewpi_invoice_date', '_bewpi_invoice_number', '_bewpi_invoice_pdf_path', '_bewpi_formatted_invoice_number', '_bewpi_invoice_year', '_vat_number_is_valid', '_vat_number', '_po_number', 'bewpi_pdf_invoice_sent', '_customer_user');

