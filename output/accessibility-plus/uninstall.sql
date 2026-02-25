-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wya11y_settings', 'easywpstuff_assesplus_booster_options', 'wya11y_statement_page', 'wya11y_banner_states', 'wya11y_plugin_activated_at', 'wya11y_statement', 'wya11y_version', 'wya11y_first_time_activated_plugin', '_wya11y_first_time_install', 'wya11y_first_time_install');

