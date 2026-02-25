<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('frames_options');
delete_site_option('frames_options');
delete_option('frames_vg_version');
delete_site_option('frames_vg_version');
delete_option('frames_db_changes');
delete_site_option('frames_db_changes');
delete_option('frames_ew_logs');
delete_site_option('frames_ew_logs');
delete_option('frames_vg_pro');
delete_site_option('frames_vg_pro');

