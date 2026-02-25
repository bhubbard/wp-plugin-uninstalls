<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prayer_times_method');
delete_site_option('prayer_times_method');
delete_option('prayer_times_address');
delete_site_option('prayer_times_address');
delete_option('prayer_times_school');
delete_site_option('prayer_times_school');
delete_option('prayer_times_latitude_adjustment_method');
delete_site_option('prayer_times_latitude_adjustment_method');
delete_option('prayer_times_display_format');
delete_site_option('prayer_times_display_format');
delete_option('prayer_times_display_header_bg');
delete_site_option('prayer_times_display_header_bg');
delete_option('prayer_times_display_header_text');
delete_site_option('prayer_times_display_header_text');
delete_option('prayer_times_display_row_bg');
delete_site_option('prayer_times_display_row_bg');
delete_option('prayer_times_display_row_text');
delete_site_option('prayer_times_display_row_text');
delete_option('prayer_times_display_heading');
delete_site_option('prayer_times_display_heading');
delete_option('prayer_times_display_heading_bg');
delete_site_option('prayer_times_display_heading_bg');
delete_option('prayer_times_display_heading_text');
delete_site_option('prayer_times_display_heading_text');
delete_option('prayer_times_override_fajr');
delete_site_option('prayer_times_override_fajr');
delete_option('prayer_times_override_dhuhr');
delete_site_option('prayer_times_override_dhuhr');
delete_option('prayer_times_override_asr');
delete_site_option('prayer_times_override_asr');
delete_option('prayer_times_override_maghrib');
delete_site_option('prayer_times_override_maghrib');
delete_option('prayer_times_override_isha');
delete_site_option('prayer_times_override_isha');

