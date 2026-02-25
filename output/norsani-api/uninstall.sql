-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('norsani_api', 'woocommerce_tax_total_display', 'frozr_gen_settings');

