-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('show_stocks', 'stock_position', 'display_icon', 'in_stock_color', 'out_stock_color', 'dssfw_backorder_stock', 'out_stock_bg_color', 'dssfw_out_of_stock', 'dssfw_can_be_backorder_stock', 'in_stock_bg_color', 'dssfw_in_stock', 'dssfw_product_backorder_stock', 'dssfw_product_out_of_stock', 'dssfw_product_in_stock', 'dssfw_product_can_be_backorder_stock');
DELETE FROM wp_options WHERE option_name LIKE '%sslpfwerror';

