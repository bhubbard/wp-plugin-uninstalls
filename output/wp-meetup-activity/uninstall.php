<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmeetupactivity_groups');
delete_site_option('wpmeetupactivity_groups');
delete_option('wpmeetupactivity_prefs');
delete_site_option('wpmeetupactivity_prefs');
delete_option('wpmeetupactivity_fb_options');
delete_site_option('wpmeetupactivity_fb_options');
delete_option('wpmeetupactivity_events_title');
delete_site_option('wpmeetupactivity_events_title');
delete_option('wpmeetupactivity_events_desc');
delete_site_option('wpmeetupactivity_events_desc');
delete_option('wpmeetupactivity_apikey');
delete_site_option('wpmeetupactivity_apikey');
delete_option('wpmeetupactivity_db_version');
delete_site_option('wpmeetupactivity_db_version');
delete_option('wpmeetupactivity_title');
delete_site_option('wpmeetupactivity_title');

// Clear Cron Jobs

