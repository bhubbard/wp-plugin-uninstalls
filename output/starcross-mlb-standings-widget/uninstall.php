<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_star_mlb_standings');
delete_site_option('widget_star_mlb_standings');
delete_option('star_mlb_standings_js');
delete_site_option('star_mlb_standings_js');
delete_option('star_mlb_standings_update');
delete_site_option('star_mlb_standings_update');

