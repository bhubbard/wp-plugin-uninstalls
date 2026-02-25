<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('websiteanalist_site_id');
delete_site_option('websiteanalist_site_id');
delete_option('websiteanalist_base_url');
delete_site_option('websiteanalist_base_url');
delete_option('websiteanalist_tracking_enabled');
delete_site_option('websiteanalist_tracking_enabled');
delete_option('websiteanalist_track_tel');
delete_site_option('websiteanalist_track_tel');
delete_option('websiteanalist_track_email');
delete_site_option('websiteanalist_track_email');
delete_option('websiteanalist_debug_mode');
delete_site_option('websiteanalist_debug_mode');
delete_option('websiteanalist_custom_actions');
delete_site_option('websiteanalist_custom_actions');

