-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_notify_low_stock_amount', 'aodroost_default_out_of_stock_free', 'aodroost_default_low_stock_free', 'aodroost_default_in_stock_free');

