<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai12z_control_version');
delete_site_option('ai12z_control_version');
delete_option('ai12z_version');
delete_site_option('ai12z_version');
delete_option('ai12z_api_key');
delete_site_option('ai12z_api_key');
delete_option('ai12z_connector_id');
delete_site_option('ai12z_connector_id');
delete_option('ai12z_project_id');
delete_site_option('ai12z_project_id');

