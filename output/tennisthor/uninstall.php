<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tennisthor_admin_api_token');
delete_site_option('tennisthor_admin_api_token');
delete_option('tennisthor_frontend_club_id');
delete_site_option('tennisthor_frontend_club_id');
delete_option('tennisthor_admin_user_details');
delete_site_option('tennisthor_admin_user_details');
delete_option('tennisthor_register_page');
delete_site_option('tennisthor_register_page');
delete_option('tennisthor_rating_page');
delete_site_option('tennisthor_rating_page');
delete_option('tennisthor_login_page');
delete_site_option('tennisthor_login_page');
delete_option('tennisthor_thor_power_rating_page');
delete_site_option('tennisthor_thor_power_rating_page');
delete_option('tennisthor_tournament_detail_page');
delete_site_option('tennisthor_tournament_detail_page');
delete_option('tennisthor_tournaments_page');
delete_site_option('tennisthor_tournaments_page');
delete_option('tennisthor_reservation_page');
delete_site_option('tennisthor_reservation_page');

