-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wwbp_is_enable', 'wwbp_default_weight_unit', 'wwbp_actual_weight_is_enable', 'wwbp_show_total_savings', 'wwbp_actual_weight_label', 'wwbp_add_to_cart_button_label', 'active_sitewide_plugins', 'wwbp_sale_price_label', 'wwbp_custom_input_is_enable', 'woocommerce_tax_display_shop');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('measure_range', 'wwbp_pricing_rule', 'wwbp_is_enable', 'wwbp_min_qty', 'wwbp_max_qty', 'wwbp_intervel', 'wwbp_weight_unit', 'wwbp_wastage_percentage');
DELETE FROM wp_usermeta WHERE meta_key IN ('measure_range', 'wwbp_pricing_rule', 'wwbp_is_enable', 'wwbp_min_qty', 'wwbp_max_qty', 'wwbp_intervel', 'wwbp_weight_unit', 'wwbp_wastage_percentage');
DELETE FROM wp_termmeta WHERE meta_key IN ('measure_range', 'wwbp_pricing_rule', 'wwbp_is_enable', 'wwbp_min_qty', 'wwbp_max_qty', 'wwbp_intervel', 'wwbp_weight_unit', 'wwbp_wastage_percentage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('measure_range', 'wwbp_pricing_rule', 'wwbp_is_enable', 'wwbp_min_qty', 'wwbp_max_qty', 'wwbp_intervel', 'wwbp_weight_unit', 'wwbp_wastage_percentage');

