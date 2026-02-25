-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbttb_variation_price_plugin_notice', 'sbttb_settings', 'sbttb_variation_price_plugin_notice');

