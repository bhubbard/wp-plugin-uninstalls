<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fa-sport-odds-translation');
delete_site_option('fa-sport-odds-translation');
delete_option('fa-sport-odds');
delete_site_option('fa-sport-odds');
delete_option('fa_sport_odds_cache');
delete_site_option('fa_sport_odds_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('fa-sportodds-application');
wp_clear_scheduled_hook('fa-sportodds-scheduled_check_application');
wp_clear_scheduled_hook('scheduled_check_application');

