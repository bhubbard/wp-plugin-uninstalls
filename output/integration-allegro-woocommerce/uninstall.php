<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('waint_token_expiry');
delete_site_option('waint_token_expiry');
delete_option('waint_token');
delete_site_option('waint_token');
delete_option('waint_refresh_token');
delete_site_option('waint_refresh_token');
delete_option('waint_last_allegro_orders_processed');
delete_site_option('waint_last_allegro_orders_processed');
delete_option('waint_delayed_settings_error');
delete_site_option('waint_delayed_settings_error');
delete_option('waint_options');
delete_site_option('waint_options');
delete_option('waint_code_verifier');
delete_site_option('waint_code_verifier');
delete_option('waint_state');
delete_site_option('waint_state');

// Clear Cron Jobs
wp_clear_scheduled_hook('waint_check_new_orders_allegro');

