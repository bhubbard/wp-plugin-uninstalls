<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pokertournaments_style');
delete_site_option('pokertournaments_style');
delete_option('pokertournaments_nofollow');
delete_site_option('pokertournaments_nofollow');
delete_option('pokertournaments_active_hall');
delete_site_option('pokertournaments_active_hall');
delete_option('pokertournaments_affil_link');
delete_site_option('pokertournaments_affil_link');
delete_option('pokertournaments_time_offset');
delete_site_option('pokertournaments_time_offset');
delete_option('halls_update');
delete_site_option('halls_update');
delete_option('poker_halls');
delete_site_option('poker_halls');

