<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('amelia_settings');
delete_site_option('amelia_settings');
delete_option('amelia_stash');
delete_site_option('amelia_stash');
delete_option('amelia_show_wpdt_promo');
delete_site_option('amelia_show_wpdt_promo');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');

// Delete Transients
delete_transient('amelia_activation_redirect');
delete_site_transient('amelia_activation_redirect');
delete_transient('amelia_square_access_token');
delete_site_transient('amelia_square_access_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('amelia_square_access_token_refresh');

