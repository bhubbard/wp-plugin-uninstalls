-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xelti_co_ui_language', 'xelti_co_max_points_per_carton', 'xelti_co_buffer_points', 'xelti_co_buffer_mode', 'xelti_co_carton_width', 'xelti_co_carton_height', 'xelti_co_carton_depth', 'xelti_co_extra_carton_cost', 'xelti_co_method_extra_carton_costs', 'xelti_co_enabled_shipping_methods', 'xelti_co_product_info_enabled', 'xelti_co_free_shipping_threshold', 'xelti_co_bar_color_product', 'xelti_co_bar_color_product_free', 'xelti_co_bar_color_buffer', 'xelti_co_bar_color_background');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_xelti_co_require_buffer', '_xelti_co_carton_points', '_xelti_co_composition', '_xelti_co_gpsr');
DELETE FROM wp_usermeta WHERE meta_key IN ('_xelti_co_require_buffer', '_xelti_co_carton_points', '_xelti_co_composition', '_xelti_co_gpsr');
DELETE FROM wp_termmeta WHERE meta_key IN ('_xelti_co_require_buffer', '_xelti_co_carton_points', '_xelti_co_composition', '_xelti_co_gpsr');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_xelti_co_require_buffer', '_xelti_co_carton_points', '_xelti_co_composition', '_xelti_co_gpsr');

