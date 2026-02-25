<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bc_options');
delete_site_option('bc_options');
delete_option('bc_twitch-dismiss');
delete_site_option('bc_twitch-dismiss');
delete_option('bcyt_companion_options');
delete_site_option('bcyt_companion_options');
delete_option('bckt_companion_options');
delete_site_option('bckt_companion_options');

// Delete Transients
delete_transient('bc_twitch_auth_token');
delete_site_transient('bc_twitch_auth_token');
delete_transient('bc_twitch_auth_token_expires');
delete_site_transient('bc_twitch_auth_token_expires');

// Clear Cron Jobs
wp_clear_scheduled_hook('bc_cron');

