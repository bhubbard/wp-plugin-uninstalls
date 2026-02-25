-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plausible_analytics_proxy_resources', 'plausible_analytics_wizard_done', 'plausible_analytics_created_mu_plugins_dir', 'plausible_analytics_proxy_speed_module_installed', 'plausible_analytics_enhanced_measurements_goal_ids', 'plausible_analytics_api_token_caps', 'plausible_analytics_version', 'plausible_analytics_settings', 'plausible_analytics_is_default_settings_saved', 'plausible_analytics_tracker_id', 'plausible_analytics_module_install_failed_notice_dismissed', 'plausible_analytics_proxy_test_failed_notice_dismissed', 'plausible_analytics_notice', 'plausible_analytics_valid_token', 'plausible_analytics_notice_dismissed');

