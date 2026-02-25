-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'webdados_invoicexpress_nag');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_mode';

