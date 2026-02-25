<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmandrill');
delete_site_option('wpmandrill');
delete_option('wpmandrill-test');
delete_site_option('wpmandrill-test');
delete_option('wpmandrill_notice_shown');
delete_site_option('wpmandrill_notice_shown');
delete_option('wpmandrill-stats');
delete_site_option('wpmandrill-stats');
delete_option('dashboard_widget_options');
delete_site_option('dashboard_widget_options');
delete_option('sewm_activated_on');
delete_site_option('sewm_activated_on');

// Delete Transients
delete_transient('wpmandrill-stats');
delete_site_transient('wpmandrill-stats');
delete_transient('mandrill-stats');
delete_site_transient('mandrill-stats');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpm_update_stats');

