-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('toret_stock_alert', 'woocommerce_email_footer_text');

