<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('edcal_default_time');
delete_site_option('edcal_default_time');
delete_option('edcal_default_status');
delete_site_option('edcal_default_status');
delete_option('edcal_custom_posts_public');
delete_site_option('edcal_custom_posts_public');
delete_option('edcal_count');
delete_site_option('edcal_count');
delete_option('edcal_do_feedback');
delete_site_option('edcal_do_feedback');
delete_option('edcal_weeks_pref');
delete_site_option('edcal_weeks_pref');
delete_option('edcal_author_pref');
delete_site_option('edcal_author_pref');
delete_option('edcal_time_pref');
delete_site_option('edcal_time_pref');
delete_option('edcal_wheelscroll_pref');
delete_site_option('edcal_wheelscroll_pref');
delete_option('edcal_status_pref');
delete_site_option('edcal_status_pref');

