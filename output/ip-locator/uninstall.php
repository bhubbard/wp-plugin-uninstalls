<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iplocator_plugin_options_override');
delete_site_option('iplocator_plugin_options_override');
delete_option('iplocator_plugin_options_zlib');
delete_site_option('iplocator_plugin_options_zlib');
delete_option('iplocator_plugin_features_autoupdate');
delete_site_option('iplocator_plugin_features_autoupdate');
delete_option('iplocator_plugin_options_logger');
delete_site_option('iplocator_plugin_options_logger');
delete_option('iplocator_plugin_options_podd');
delete_site_option('iplocator_plugin_options_podd');
delete_option('iplocator_plugin_options_usecdn');
delete_site_option('iplocator_plugin_options_usecdn');
delete_option('iplocator_plugin_options_nag');
delete_site_option('iplocator_plugin_options_nag');
delete_option('iplocator_plugin_features_analytics');
delete_site_option('iplocator_plugin_features_analytics');
delete_option('iplocator_plugin_features_history');
delete_site_option('iplocator_plugin_features_history');
delete_option('iplocator_plugin_features_metrics');
delete_site_option('iplocator_plugin_features_metrics');
delete_option('iplocator_plugin_features_shortcode');
delete_site_option('iplocator_plugin_features_shortcode');
delete_option('iplocator_plugin_features_css');
delete_site_option('iplocator_plugin_features_css');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

