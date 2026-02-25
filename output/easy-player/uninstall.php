<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_player_setting');
delete_site_option('easy_player_setting');
delete_option('easy_player_control');
delete_site_option('easy_player_control');
delete_option('easy_player_version');
delete_site_option('easy_player_version');

