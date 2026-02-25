-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooebay_options', 'wooebay_export_data', 'wooebay_products_file_name', 'wooebay_tmplate_opt');

