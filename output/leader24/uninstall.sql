-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('leader24_settings', 'woocommerce_notify_low_stock_amount', 'leader24_wc_credentials', 'leader24_agent_verified');

