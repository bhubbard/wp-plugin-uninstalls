<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('psl_refresh_token');
delete_site_option('psl_refresh_token');
delete_option('psl_page_id');
delete_site_option('psl_page_id');
delete_option('psl_id');
delete_site_option('psl_id');
delete_option('psl_token');
delete_site_option('psl_token');
delete_option('psl_token_expiry');
delete_site_option('psl_token_expiry');

// Delete Transients
delete_transient('psl_api_cache');
delete_site_transient('psl_api_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('psl_token_refresh');

