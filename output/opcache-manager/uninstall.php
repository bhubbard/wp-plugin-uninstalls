<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('opcm_plugin_options_logger');
delete_site_option('opcm_plugin_options_logger');
delete_option('opcm_plugin_options_adminbar');
delete_site_option('opcm_plugin_options_adminbar');
delete_option('opcm_plugin_options_usecdn');
delete_site_option('opcm_plugin_options_usecdn');
delete_option('opcm_plugin_options_nag');
delete_site_option('opcm_plugin_options_nag');
delete_option('opcm_plugin_features_analytics');
delete_site_option('opcm_plugin_features_analytics');
delete_option('opcm_plugin_features_history');
delete_site_option('opcm_plugin_features_history');
delete_option('opcm_plugin_features_metrics');
delete_site_option('opcm_plugin_features_metrics');
delete_option('opcm_plugin_features_reset_frequency');
delete_site_option('opcm_plugin_features_reset_frequency');
delete_option('opcm_plugin_features_warmup');
delete_site_option('opcm_plugin_features_warmup');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

