<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cff-google-calendar-version');
delete_site_option('cff-google-calendar-version');
delete_option('CP_CFF_GOOGLE_CALENDAR_CLIENT_ID');
delete_site_option('CP_CFF_GOOGLE_CALENDAR_CLIENT_ID');
delete_option('CP_CFF_GOOGLE_CALENDAR_CLIENT_SECRET');
delete_site_option('CP_CFF_GOOGLE_CALENDAR_CLIENT_SECRET');
delete_option('CP_CFF_GOOGLE_CALENDAR_ACCESS_TOKEN');
delete_site_option('CP_CFF_GOOGLE_CALENDAR_ACCESS_TOKEN');
delete_option('CP_CFF_GOOGLE_CALENDAR_REFRESH_TOKEN');
delete_site_option('CP_CFF_GOOGLE_CALENDAR_REFRESH_TOKEN');

// Delete Transients
delete_transient('cff_google_oauth_state');
delete_site_transient('cff_google_oauth_state');

