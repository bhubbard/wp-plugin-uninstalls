-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartpayinvoices_option_db_version', 'smartpayinvoices_options', 'woocommerce_tax_round_at_subtotal');

