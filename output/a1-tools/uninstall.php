<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('a1tools_cache_expiry');
delete_site_option('a1tools_cache_expiry');
delete_option('a1tools_form_enabled');
delete_site_option('a1tools_form_enabled');
delete_option('a1tools_form_secret');
delete_site_option('a1tools_form_secret');
delete_option('a1tools_form_board_id');
delete_site_option('a1tools_form_board_id');
delete_option('a1tools_form_group_id');
delete_site_option('a1tools_form_group_id');

// Delete Transients
delete_transient('a1tools_site_variables');
delete_site_transient('a1tools_site_variables');

// Clear Cron Jobs
wp_clear_scheduled_hook('a1tools_cache_refresh');

