<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wt_breeze_subdomain');
delete_site_option('wt_breeze_subdomain');
delete_option('wt_breeze_id');
delete_site_option('wt_breeze_id');
delete_option('wt_breeze_days');
delete_site_option('wt_breeze_days');
delete_option('wt_livebar_activated');
delete_site_option('wt_livebar_activated');
delete_option('wt_breeze_date_time');
delete_site_option('wt_breeze_date_time');
delete_option('wt_breeze_date_day');
delete_site_option('wt_breeze_date_day');
delete_option('wt_breeze_date_hour');
delete_site_option('wt_breeze_date_hour');
delete_option('wt_breeze_duration');
delete_site_option('wt_breeze_duration');
delete_option('wt_breeze_layout');
delete_site_option('wt_breeze_layout');
delete_option('wt_breeze_dismissable');
delete_site_option('wt_breeze_dismissable');
delete_option('wt_breeze_message');
delete_site_option('wt_breeze_message');
delete_option('wt_breeze_url');
delete_site_option('wt_breeze_url');
delete_option('wt_head_background_color');
delete_site_option('wt_head_background_color');
delete_option('wt_head_button_color');
delete_site_option('wt_head_button_color');
delete_option('wt_breeze_button_text');
delete_site_option('wt_breeze_button_text');
delete_option('wt_head_text_color');
delete_site_option('wt_head_text_color');
delete_option('wt_head_button_text_color');
delete_site_option('wt_head_button_text_color');

// Delete Transients
delete_transient('wt_breeze_campaign_trans');
delete_site_transient('wt_breeze_campaign_trans');
delete_transient('wt_breeze_contrib_trans');
delete_site_transient('wt_breeze_contrib_trans');
delete_transient('wt_breeze_calendars_trans');
delete_site_transient('wt_breeze_calendars_trans');
delete_transient('wt_breeze_events_trans');
delete_site_transient('wt_breeze_events_trans');

