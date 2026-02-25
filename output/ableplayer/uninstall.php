<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('able_player_count');
delete_site_option('able_player_count');
delete_option('able_show_playground_intro');
delete_site_option('able_show_playground_intro');
delete_option('ableplayer_settings');
delete_site_option('ableplayer_settings');

