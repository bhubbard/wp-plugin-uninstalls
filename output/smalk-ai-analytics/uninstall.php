<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smalk_ai_workspace_key');
delete_site_option('smalk_ai_workspace_key');
delete_option('smalk_ai_workspace_name');
delete_site_option('smalk_ai_workspace_name');
delete_option('smalk_ai_publisher_activated');
delete_site_option('smalk_ai_publisher_activated');
delete_option('smalk_ai_project_key');
delete_site_option('smalk_ai_project_key');

// Delete Transients
delete_transient('smalk_workspace_fetch_success');
delete_site_transient('smalk_workspace_fetch_success');
delete_transient('smalk_workspace_fetch_error');
delete_site_transient('smalk_workspace_fetch_error');

