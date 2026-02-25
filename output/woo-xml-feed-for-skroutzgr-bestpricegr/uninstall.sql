-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('features', 'instockavailability', 'ifoutofstock', 'include_tax', 'group_variations', 'custom_productId', 'custom_mpn', 'skroutz_atts_color', 'skroutz_atts_size', 'skroutz_atts_manuf', 'exclude_cats', 'enable_gtin', 'gtin_label', 'gtin_value', 'rollback', 'last_update', 'woocommerce_weight_unit');

