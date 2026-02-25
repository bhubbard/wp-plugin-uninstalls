-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Product_stock_option_css', 'Product_stock_alert_db_version', 'Product_stock_option_sender', 'Product_stock_option_from', 'Product_stock_option_subject', 'Product_stock_option_message', 'Product_stock_option_error', 'Product_stock_option_success', 'Product_stock_option_placeholder', 'Product_stock_option_submit', 'Product_stock_option_shortcode');

