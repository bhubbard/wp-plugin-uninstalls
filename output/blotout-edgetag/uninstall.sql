-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edgetag_init', 'edgetag_url', 'edgetag_selectors', 'edgetag_script', 'edgetag_newsletter_event_name', 'edgetag_purchase_subtotal_only', 'woocommerce_price_num_decimals');

