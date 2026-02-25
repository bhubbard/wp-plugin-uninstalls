-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tik_cancelled_order_settings', 'woocommerce_email_footer_text');

