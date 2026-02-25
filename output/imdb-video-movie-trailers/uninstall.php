<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cinemabase_players');
delete_site_option('cinemabase_players');
delete_option('cinemabase_token');
delete_site_option('cinemabase_token');
delete_option('cinemabase_excerpt');
delete_site_option('cinemabase_excerpt');
delete_option('cinemabase_welcome_notice');
delete_site_option('cinemabase_welcome_notice');

