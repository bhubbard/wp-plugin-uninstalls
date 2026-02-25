<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('player_leaderboard_db_version');
delete_site_option('player_leaderboard_db_version');

