<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('esap_popup_color_text');
delete_site_option('esap_popup_color_text');
delete_option('esap_popup_color_bg');
delete_site_option('esap_popup_color_bg');
delete_option('esap_popup_color_border');
delete_site_option('esap_popup_color_border');
delete_option('esap_popup_alarm_keywords');
delete_site_option('esap_popup_alarm_keywords');
delete_option('esap_popup_unit_ids');
delete_site_option('esap_popup_unit_ids');
delete_option('esap_popup_list_count');
delete_site_option('esap_popup_list_count');
delete_option('esap_popup_settings_json_mapping');
delete_site_option('esap_popup_settings_json_mapping');
delete_option('esap_popup_settings_api_key');
delete_site_option('esap_popup_settings_api_key');
delete_option('esap_popup_events_time_last_api_call');
delete_site_option('esap_popup_events_time_last_api_call');
delete_option('esap_popup_events_cache');
delete_site_option('esap_popup_events_cache');
delete_option('esap_popup_alarm_time_last_api_call');
delete_site_option('esap_popup_alarm_time_last_api_call');
delete_option('esap_popup_alarm_cache');
delete_site_option('esap_popup_alarm_cache');

