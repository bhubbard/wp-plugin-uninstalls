-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('power_fortune_telling_cards_plugin_option', 'rewrite_rules', 'power_daily_cards_plugin_version', 'wp_fortune_telling_cards_plugin_option');

