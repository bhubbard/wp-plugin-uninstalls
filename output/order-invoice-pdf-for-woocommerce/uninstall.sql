-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpe_invoice_pdf_settings', 'woocommerce_currency');

