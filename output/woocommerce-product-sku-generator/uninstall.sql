-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_db_version', 'active_sitewide_plugins', 'wc_sku_generator_simple', 'wc_sku_generator_variation', 'wc_sku_generator_attribute_spaces', 'wc_sku_generator_version', 'wc_sku_generator_select');

