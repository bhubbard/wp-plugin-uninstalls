<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('triboon_logo');
delete_site_option('triboon_logo');
delete_option('triboon_wp_token_option');
delete_site_option('triboon_wp_token_option');
delete_option('notif_check');
delete_site_option('notif_check');
delete_option('check_new_reportage');
delete_site_option('check_new_reportage');
delete_option('triboon_db_version');
delete_site_option('triboon_db_version');
delete_option('triboon_update_db_check');
delete_site_option('triboon_update_db_check');
delete_option('default-category');
delete_site_option('default-category');

