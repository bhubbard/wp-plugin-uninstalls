<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chatway_user_identifier');
delete_site_option('chatway_user_identifier');
delete_option('chatway_token');
delete_site_option('chatway_token');
delete_option('cht_redirect');
delete_site_option('cht_redirect');
delete_option('cht_numb_slug');
delete_site_option('cht_numb_slug');
delete_option('hide_chaty_cta');
delete_site_option('hide_chaty_cta');
delete_option('cht_active');
delete_site_option('cht_active');
delete_option('hide_chaty_recommended_plugin');
delete_site_option('hide_chaty_recommended_plugin');
delete_option('chaty_intro_popup');
delete_site_option('chaty_intro_popup');
delete_option('cht_license_key');
delete_site_option('cht_license_key');
delete_option('cht_color');
delete_site_option('cht_color');
delete_option('cht_custom_color');
delete_site_option('cht_custom_color');
delete_option('cht_position');
delete_site_option('cht_position');
delete_option('positionSide');
delete_site_option('positionSide');
delete_option('cht_bottom_spacing');
delete_site_option('cht_bottom_spacing');
delete_option('cht_side_spacing');
delete_site_option('cht_side_spacing');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cht_widget_title_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cht_social_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cht_devices');
delete_site_option('cht_devices');
delete_option('cht_widget_font');
delete_site_option('cht_widget_font');
delete_option('cht_cta');
delete_site_option('cht_cta');
delete_option('cht_cta_switcher');
delete_site_option('cht_cta_switcher');
delete_option('cht_widget_size');
delete_site_option('cht_widget_size');
delete_option('cht_widget_img');
delete_site_option('cht_widget_img');
delete_option('widget_icon');
delete_site_option('widget_icon');
delete_option('chaty_attention_effect');
delete_site_option('chaty_attention_effect');
delete_option('chaty_default_state');
delete_site_option('chaty_default_state');
delete_option('chaty_trigger_on_time');
delete_site_option('chaty_trigger_on_time');
delete_option('chaty_trigger_time');
delete_site_option('chaty_trigger_time');
delete_option('chaty_trigger_on_exit');
delete_site_option('chaty_trigger_on_exit');
delete_option('chaty_trigger_on_scroll');
delete_site_option('chaty_trigger_on_scroll');
delete_option('chaty_trigger_on_page_scroll');
delete_site_option('chaty_trigger_on_page_scroll');
delete_option('cht_close_button');
delete_site_option('cht_close_button');
delete_option('cht_close_button_text');
delete_site_option('cht_close_button_text');
delete_option('chaty_icons_view');
delete_site_option('chaty_icons_view');
delete_option('cht_created_on');
delete_site_option('cht_created_on');
delete_option('cht_widget_title');
delete_site_option('cht_widget_title');
delete_option('cht_cta_action');
delete_site_option('cht_cta_action');
delete_option('cht_cta_text_color');
delete_site_option('cht_cta_text_color');
delete_option('cht_cta_bg_color');
delete_site_option('cht_cta_bg_color');
delete_option('cht_pending_messages');
delete_site_option('cht_pending_messages');
delete_option('cht_number_of_messages');
delete_site_option('cht_number_of_messages');
delete_option('cht_number_color');
delete_site_option('cht_number_color');
delete_option('cht_number_bg_color');
delete_site_option('cht_number_bg_color');
delete_option('cta_type');
delete_site_option('cta_type');
delete_option('cta_heading_text');
delete_site_option('cta_heading_text');
delete_option('cta_body_text');
delete_site_option('cta_body_text');
delete_option('cta_header_text_color');
delete_site_option('cta_header_text_color');
delete_option('cta_header_bg_color');
delete_site_option('cta_header_bg_color');
delete_option('chaty_updated_on');
delete_site_option('chaty_updated_on');
delete_option('chaty_contact_us_setting');
delete_site_option('chaty_contact_us_setting');
delete_option('show_first_chaty_box');
delete_site_option('show_first_chaty_box');
delete_option('cht_is_chatway_added');
delete_site_option('cht_is_chatway_added');
delete_option('cht_is_default_deleted');
delete_site_option('cht_is_default_deleted');
delete_option('cht_social_whatsapp');
delete_site_option('cht_social_whatsapp');
delete_option('cht_social_phone');
delete_site_option('cht_social_phone');
delete_option('Chaty_show_affiliate_box_after');
delete_site_option('Chaty_show_affiliate_box_after');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_hide_affiliate_box' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_show_affiliate_box_after' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('chaty_views');
delete_site_option('chaty_views');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cht_active%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('show_first_chaty_lead_box');
delete_site_option('show_first_chaty_lead_box');
delete_option('cht_google_analytics');
delete_site_option('cht_google_analytics');
delete_option('cht_date_and_time_settings');
delete_site_option('cht_date_and_time_settings');
delete_option('litespeed.conf.optm-js_defer');
delete_site_option('litespeed.conf.optm-js_defer');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cht_numb_slug%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_hide_review_box' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_show_review_box_after' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_hide_upgrade_box' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_show_upgrade_box_after' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cht_social_Contact_Us');
delete_site_option('cht_social_Contact_Us');
delete_option('cht_page_title_for_change');
delete_site_option('cht_page_title_for_change');
delete_option('chaty_traffic_source');
delete_site_option('chaty_traffic_source');
delete_option('chaty_traffic_source_direct_visit');
delete_site_option('chaty_traffic_source_direct_visit');
delete_option('chaty_traffic_source_social_network');
delete_site_option('chaty_traffic_source_social_network');
delete_option('chaty_traffic_source_search_engine');
delete_site_option('chaty_traffic_source_search_engine');
delete_option('chaty_traffic_source_google_ads');
delete_site_option('chaty_traffic_source_google_ads');
delete_option('chaty_custom_traffic_rules');
delete_site_option('chaty_custom_traffic_rules');

// Delete Transients
delete_transient('chaty_user_country');
delete_site_transient('chaty_user_country');

