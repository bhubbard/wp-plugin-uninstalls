<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clarity_project_id');
delete_site_option('clarity_project_id');
delete_option('clarity_wordpress_site_id');
delete_site_option('clarity_wordpress_site_id');
delete_option('clarity_is_latest_plugin_version');
delete_site_option('clarity_is_latest_plugin_version');
delete_option('clarity_is_agent_enabled');
delete_site_option('clarity_is_agent_enabled');
delete_option('clarity_activation_redirect');
delete_site_option('clarity_activation_redirect');
delete_option('clarity_collect_batch');
delete_site_option('clarity_collect_batch');

