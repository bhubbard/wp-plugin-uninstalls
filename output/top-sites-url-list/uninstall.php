<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tsul_google_authtoken');
delete_site_option('tsul_google_authtoken');
delete_option('tsul_google_token');
delete_site_option('tsul_google_token');
delete_option('tsul_google_uid');
delete_site_option('tsul_google_uid');
delete_option('tsul_hide_profiles');
delete_site_option('tsul_hide_profiles');
delete_option('tsul_google_profile_name');
delete_site_option('tsul_google_profile_name');
delete_option('tsul_first_fetch');
delete_site_option('tsul_first_fetch');
delete_option('tsul_cron_recurrance');
delete_site_option('tsul_cron_recurrance');
delete_option('tsul_show_in_admin_tables');
delete_site_option('tsul_show_in_admin_tables');
delete_option('tsul_full_stats');
delete_site_option('tsul_full_stats');
delete_option('tsul_stats');
delete_site_option('tsul_stats');
delete_option('widget_tsul');
delete_site_option('widget_tsul');

// Clear Cron Jobs
wp_clear_scheduled_hook('tsul_cron_hook');

