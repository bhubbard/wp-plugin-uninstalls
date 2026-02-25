<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_trigger_github_last_triggered_timestamp');
delete_site_option('wp_trigger_github_last_triggered_timestamp');
delete_option('ga_option_token');
delete_site_option('ga_option_token');
delete_option('ga_option_username');
delete_site_option('ga_option_username');
delete_option('ga_option_repo');
delete_site_option('ga_option_repo');
delete_option('ga_option_workflow');
delete_site_option('ga_option_workflow');

