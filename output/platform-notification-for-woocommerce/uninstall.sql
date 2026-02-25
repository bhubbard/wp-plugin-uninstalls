-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_wc_discord_integration_settings', 'woocommerce_wc_slack_integration_settings');

