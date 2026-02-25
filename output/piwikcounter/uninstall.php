<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('piwikcounter_piwik_url');
delete_site_option('piwikcounter_piwik_url');
delete_option('piwikcounter_site_id');
delete_site_option('piwikcounter_site_id');
delete_option('piwikcounter_auth_key');
delete_site_option('piwikcounter_auth_key');
delete_option('piwikcounter_start_date');
delete_site_option('piwikcounter_start_date');
delete_option('piwikcounter_unique_visitors');
delete_site_option('piwikcounter_unique_visitors');
delete_option('piwikcounter_update_every');
delete_site_option('piwikcounter_update_every');
delete_option('piwikcounter_visits_today_visible');
delete_site_option('piwikcounter_visits_today_visible');
delete_option('piwikcounter_visitors_last_change');
delete_site_option('piwikcounter_visitors_last_change');
delete_option('piwikcounter_visitors_yesterday');
delete_site_option('piwikcounter_visitors_yesterday');
delete_option('piwikcounter_todays_visitors_last_change');
delete_site_option('piwikcounter_todays_visitors_last_change');
delete_option('piwikcounter_todays_visitors');
delete_site_option('piwikcounter_todays_visitors');

