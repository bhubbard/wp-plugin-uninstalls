-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dc_moafw_activate', 'dc_moafw_minimum', 'dc_moafw_message', 'dc_moafw_current_total_text', 'dc_moafw_currency_display_type', 'dc_moafw_message_shop', 'woocommerce_currency');

