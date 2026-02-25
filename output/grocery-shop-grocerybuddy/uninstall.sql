-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wgby_plugin_is_activated', 'grocerybuddy_version', 'wgby_main_menu_name_wg', 'wgby_main_categories_list_name', 'wgby_exclude_categories', 'wgby_exclude_products', 'wgby_fees_order_less_than', 'wgby_flat_shipping_rate', 'wgby_color_primer', 'wgby_color_secondary', 'wgby_color_headings', 'wgby_color_text', 'wgby_color_transparent_text', 'wgby_sort_categories', 'wgby_minimum_order', 'wgby_bag_empty_headings', 'wgby_bag_empty_description');

