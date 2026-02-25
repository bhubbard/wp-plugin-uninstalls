<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tnt_video_list_manager_db_version');
delete_site_option('tnt_video_list_manager_db_version');
delete_option('tntVideoManageOptions');
delete_site_option('tntVideoManageOptions');

