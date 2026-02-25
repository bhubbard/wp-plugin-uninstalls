<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plausible_analytics_proxy_resources');
delete_site_option('plausible_analytics_proxy_resources');
delete_option('plausible_analytics_wizard_done');
delete_site_option('plausible_analytics_wizard_done');
delete_option('plausible_analytics_created_mu_plugins_dir');
delete_site_option('plausible_analytics_created_mu_plugins_dir');
delete_option('plausible_analytics_proxy_speed_module_installed');
delete_site_option('plausible_analytics_proxy_speed_module_installed');
delete_option('plausible_analytics_enhanced_measurements_goal_ids');
delete_site_option('plausible_analytics_enhanced_measurements_goal_ids');
delete_option('plausible_analytics_api_token_caps');
delete_site_option('plausible_analytics_api_token_caps');
delete_option('plausible_analytics_version');
delete_site_option('plausible_analytics_version');
delete_option('plausible_analytics_settings');
delete_site_option('plausible_analytics_settings');
delete_option('plausible_analytics_is_default_settings_saved');
delete_site_option('plausible_analytics_is_default_settings_saved');
delete_option('plausible_analytics_tracker_id');
delete_site_option('plausible_analytics_tracker_id');

// Delete Transients
delete_transient('plausible_analytics_module_install_failed_notice_dismissed');
delete_site_transient('plausible_analytics_module_install_failed_notice_dismissed');
delete_transient('plausible_analytics_proxy_test_failed_notice_dismissed');
delete_site_transient('plausible_analytics_proxy_test_failed_notice_dismissed');
delete_transient('plausible_analytics_notice');
delete_site_transient('plausible_analytics_notice');
delete_transient('plausible_analytics_valid_token');
delete_site_transient('plausible_analytics_valid_token');
delete_transient('plausible_analytics_notice_dismissed');
delete_site_transient('plausible_analytics_notice_dismissed');

