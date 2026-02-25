<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flash_games_top_games');
delete_site_option('flash_games_top_games');
delete_option('flash_games_top_num');
delete_site_option('flash_games_top_num');
delete_option('flash_games_new_games');
delete_site_option('flash_games_new_games');
delete_option('flash_games_link');
delete_site_option('flash_games_link');
delete_option('flash_games_new_num');
delete_site_option('flash_games_new_num');

