<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('claspo_script_id');
delete_site_option('claspo_script_id');
delete_option('claspo_script_code');
delete_site_option('claspo_script_code');
delete_option('claspo_plugin_activated');
delete_site_option('claspo_plugin_activated');

// Delete Transients
delete_transient('claspo_api_error');
delete_site_transient('claspo_api_error');
delete_transient('claspo_success_message');
delete_site_transient('claspo_success_message');

