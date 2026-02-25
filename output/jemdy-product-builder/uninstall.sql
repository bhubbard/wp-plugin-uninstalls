-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jdpb_settings_builder', 'woocommerce_currency_pos', 'jdpb_theme_tokens');

