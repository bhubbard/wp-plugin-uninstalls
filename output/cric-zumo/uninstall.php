<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('criczumo_away_team_color');
delete_site_option('criczumo_away_team_color');
delete_option('criczumo_home_team_color');
delete_site_option('criczumo_home_team_color');
delete_option('criczumo_live_team_color');
delete_site_option('criczumo_live_team_color');
delete_option('criczumo_ended_team_color');
delete_site_option('criczumo_ended_team_color');
delete_option('criczumo_upcoming_team_color');
delete_site_option('criczumo_upcoming_team_color');
delete_option('live_team_color');
delete_site_option('live_team_color');

