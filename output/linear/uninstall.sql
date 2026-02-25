-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linear_settings', 'rewrite_rules', 'trp_settings', 'linear_dismiss_old_plugin_version', 'linear_dismiss_missing_data', 'linear_flush_rewrite_rules_needed');
DELETE FROM wp_options WHERE option_name LIKE 'linear_dismiss_%';

