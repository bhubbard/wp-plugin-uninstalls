-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_notify_low_stock_amount', 'active_sitewide_plugins', 'trwc_version');

