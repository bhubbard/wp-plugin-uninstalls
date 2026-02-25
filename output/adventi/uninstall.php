<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adventi_gifts_settings');
delete_site_option('adventi_gifts_settings');
delete_option('adventi_color_scheme');
delete_site_option('adventi_color_scheme');
delete_option('adventi_start_date');
delete_site_option('adventi_start_date');
delete_option('adventi_days_count');
delete_site_option('adventi_days_count');
delete_option('adventi_main_title');
delete_site_option('adventi_main_title');
delete_option('adventi_invitation_text');
delete_site_option('adventi_invitation_text');
delete_option('adventi_submit_text');
delete_site_option('adventi_submit_text');
delete_option('adventi_day_prefix');
delete_site_option('adventi_day_prefix');
delete_option('adventi_tomorrow_message');
delete_site_option('adventi_tomorrow_message');
delete_option('adventi_download_text');
delete_site_option('adventi_download_text');
delete_option('adventi_future_msg');
delete_site_option('adventi_future_msg');

