<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('html5video_player_db_table_version');
delete_site_option('html5video_player_db_table_version');

