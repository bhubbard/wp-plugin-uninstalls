-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooco_settings', 'wooco_localization', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wooco_%';
DELETE FROM wp_options WHERE option_name LIKE 'wooco_show_items_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wooco_pricing', 'wooco_discount_percent', 'wooco_components', 'wpcvi_images', 'wooco_same_products', 'wooco_shipping_fee', 'wooco_qty_min', 'wooco_qty_max', 'wooco_total_limits', 'wooco_total_limits_min', 'wooco_total_limits_max', 'wooco_custom_price', 'wooco_before_text', 'wooco_after_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('wooco_pricing', 'wooco_discount_percent', 'wooco_components', 'wpcvi_images', 'wooco_same_products', 'wooco_shipping_fee', 'wooco_qty_min', 'wooco_qty_max', 'wooco_total_limits', 'wooco_total_limits_min', 'wooco_total_limits_max', 'wooco_custom_price', 'wooco_before_text', 'wooco_after_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('wooco_pricing', 'wooco_discount_percent', 'wooco_components', 'wpcvi_images', 'wooco_same_products', 'wooco_shipping_fee', 'wooco_qty_min', 'wooco_qty_max', 'wooco_total_limits', 'wooco_total_limits_min', 'wooco_total_limits_max', 'wooco_custom_price', 'wooco_before_text', 'wooco_after_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wooco_pricing', 'wooco_discount_percent', 'wooco_components', 'wpcvi_images', 'wooco_same_products', 'wooco_shipping_fee', 'wooco_qty_min', 'wooco_qty_max', 'wooco_total_limits', 'wooco_total_limits_min', 'wooco_total_limits_max', 'wooco_custom_price', 'wooco_before_text', 'wooco_after_text');

