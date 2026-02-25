<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('masjid_id');
delete_site_option('masjid_id');
delete_option('montly_pdf_url');
delete_site_option('montly_pdf_url');
delete_option('masjid_calendar_type');
delete_site_option('masjid_calendar_type');
delete_option('masjid_calendar_layout');
delete_site_option('masjid_calendar_layout');
delete_option('highlighted_color');
delete_site_option('highlighted_color');
delete_option('jumuah3_time');
delete_site_option('jumuah3_time');
delete_option('jumuah3time');
delete_site_option('jumuah3time');
delete_option('khutbah_time1');
delete_site_option('khutbah_time1');
delete_option('timeformat_24');
delete_site_option('timeformat_24');
delete_option('iqamahChange');
delete_site_option('iqamahChange');
delete_option('khutbah_time');
delete_site_option('khutbah_time');
delete_option('highlighted_text_color');
delete_site_option('highlighted_text_color');
delete_option('starts_lable');
delete_site_option('starts_lable');
delete_option('top_heading');
delete_site_option('top_heading');
delete_option('iqamah_lable');
delete_site_option('iqamah_lable');
delete_option('sunrise_lable');
delete_site_option('sunrise_lable');
delete_option('fajr_lable');
delete_site_option('fajr_lable');
delete_option('dhuhr_lable');
delete_site_option('dhuhr_lable');
delete_option('asr_lable');
delete_site_option('asr_lable');
delete_option('maghrib_lable');
delete_site_option('maghrib_lable');
delete_option('isha_lable');
delete_site_option('isha_lable');
delete_option('jumuah_header');
delete_site_option('jumuah_header');
delete_option('jumuah1_lable');
delete_site_option('jumuah1_lable');
delete_option('jumuah2_lable');
delete_site_option('jumuah2_lable');
delete_option('jumuah3_lable');
delete_site_option('jumuah3_lable');
delete_option('montly_text');
delete_site_option('montly_text');
delete_option('khutbah_label');
delete_site_option('khutbah_label');
delete_option('widget_mpsti_wpb_widget');
delete_site_option('widget_mpsti_wpb_widget');

