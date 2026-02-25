<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('matches_upcoming_list_number');
delete_site_option('matches_upcoming_list_number');
delete_option('matches_team_name');
delete_site_option('matches_team_name');
delete_option('matches_team_location');
delete_site_option('matches_team_location');
delete_option('matches_team_logo');
delete_site_option('matches_team_logo');
delete_option('matches_date_format');
delete_site_option('matches_date_format');
delete_option('matches_custom_date_format');
delete_site_option('matches_custom_date_format');
delete_option('matches_date_localize');
delete_site_option('matches_date_localize');
delete_option('matches_date_timezone');
delete_site_option('matches_date_timezone');
delete_option('matches_db_version');
delete_site_option('matches_db_version');

