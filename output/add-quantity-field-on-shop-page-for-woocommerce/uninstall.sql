-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_variation_swatches', 'aqf_variation_price_plugin_notice', 'aqf_variation_price_plugin_notice');

