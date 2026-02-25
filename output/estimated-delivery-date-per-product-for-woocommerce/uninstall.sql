-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('est_delvry_date', 'est_delvry_date_all_pro', 'est_dispatch_date_all_pro', 'est_delvry_days', 'est_date_display_single_pro', 'delvry_text_position_sinpro', 'single_pro_display_opt', 'single_pro_delivry_text_bg', 'single_pro_delivry_text_color', 'single_pro_order_icon', 'single_pro_shipping_icon', 'single_pro_delivery_icon', 'single_pro_delivry_widget_bg', 'single_pro_delivry_widget_color', 'single_pro_delivry_widget_border_color', 'est_display_on_cartpage', 'est_display_on_orderpage', 'hide_outofstock_product', 'hide_product_backorder', 'single_pro_delivery_text', 'single_pro_shipping_text', 'single_pro_order_text', 'delvry_text_cart_checkout', 'delvry_text_pro_page', 'delvry_text_out_of_stock', 'delvry_text_cart_checkout_key', 'delvry_text_order_key', 'delvry_text_order_page', 'delvry_date_format');
DELETE FROM wp_options WHERE option_name LIKE '%edwerror';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('est_date_delivry_time', 'delvry_time_outstock', 'delvry_time_backorder', 'single_pro_est_delvry_date', 'est_date_dispatch_time', 'est_date_var_delivry_time', 'est_date_var_dispatch_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('est_date_delivry_time', 'delvry_time_outstock', 'delvry_time_backorder', 'single_pro_est_delvry_date', 'est_date_dispatch_time', 'est_date_var_delivry_time', 'est_date_var_dispatch_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('est_date_delivry_time', 'delvry_time_outstock', 'delvry_time_backorder', 'single_pro_est_delvry_date', 'est_date_dispatch_time', 'est_date_var_delivry_time', 'est_date_var_dispatch_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('est_date_delivry_time', 'delvry_time_outstock', 'delvry_time_backorder', 'single_pro_est_delvry_date', 'est_date_dispatch_time', 'est_date_var_delivry_time', 'est_date_var_dispatch_time');

