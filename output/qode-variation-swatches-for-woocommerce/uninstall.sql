-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qode_variation_swatches_for_woocommerce_framework_permalinks', 'qode_variation_swatches_for_woocommerce_framework_permalinks_updated');

