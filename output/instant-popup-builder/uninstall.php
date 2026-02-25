<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('subscription_license_active');
delete_site_option('subscription_license_active');
delete_option('instant_popup_subscription_activated');
delete_site_option('instant_popup_subscription_activated');
delete_option('instant_popup_builder_db_active');
delete_site_option('instant_popup_builder_db_active');
delete_option('instant_popup_builder_db_debug');
delete_site_option('instant_popup_builder_db_debug');
delete_option('instant_popup_builder_preserve_analytics');
delete_site_option('instant_popup_builder_preserve_analytics');
delete_option('instant_popup_builder_cleanup_options');
delete_site_option('instant_popup_builder_cleanup_options');
delete_option('instant_popup_analytics_dashboard_widget');
delete_site_option('instant_popup_analytics_dashboard_widget');
delete_option('ipb_show_review_notice');
delete_site_option('ipb_show_review_notice');
delete_option('ipb_review_show_date');
delete_site_option('ipb_review_show_date');
delete_option('instant_popup_subscription_settings');
delete_site_option('instant_popup_subscription_settings');
delete_option('instant_popup_builder_backup_before_delete');
delete_site_option('instant_popup_builder_backup_before_delete');
delete_option('instant_popup_builder_confirm_deletion');
delete_site_option('instant_popup_builder_confirm_deletion');
delete_option('instant_popup_builder_exit');
delete_site_option('instant_popup_builder_exit');
delete_option('instant_popup_builder_scroll');
delete_site_option('instant_popup_builder_scroll');
delete_option('instant_popup_woocommerce');
delete_site_option('instant_popup_woocommerce');
delete_option('ipb_brevo_api_key');
delete_site_option('ipb_brevo_api_key');
delete_option('ipb_brevo_list_id');
delete_site_option('ipb_brevo_list_id');
delete_option('ipb_activecampaign_api_url');
delete_site_option('ipb_activecampaign_api_url');
delete_option('ipb_activecampaign_api_key');
delete_site_option('ipb_activecampaign_api_key');
delete_option('ipb_activecampaign_list_id');
delete_site_option('ipb_activecampaign_list_id');
delete_option('ipb_getresponse_api_key');
delete_site_option('ipb_getresponse_api_key');
delete_option('ipb_getresponse_campaign_id');
delete_site_option('ipb_getresponse_campaign_id');
delete_option('ipb_smtp_host');
delete_site_option('ipb_smtp_host');
delete_option('ipb_smtp_port');
delete_site_option('ipb_smtp_port');
delete_option('ipb_smtp_username');
delete_site_option('ipb_smtp_username');
delete_option('ipb_smtp_password');
delete_site_option('ipb_smtp_password');
delete_option('ipb_smtp_encryption');
delete_site_option('ipb_smtp_encryption');
delete_option('ipb_smtp_from_email');
delete_site_option('ipb_smtp_from_email');
delete_option('ipb_smtp_from_name');
delete_site_option('ipb_smtp_from_name');
delete_option('ipb_active_integration');
delete_site_option('ipb_active_integration');
delete_option('ipb_subscribers_per_page');
delete_site_option('ipb_subscribers_per_page');
delete_option('ipb_show_campaign_names');
delete_site_option('ipb_show_campaign_names');
delete_option('ipb_show_date_created');
delete_site_option('ipb_show_date_created');
delete_option('ipb_show_id_column');
delete_site_option('ipb_show_id_column');
delete_option('ipb_show_name_column');
delete_site_option('ipb_show_name_column');
delete_option('ipb_show_email_column');
delete_site_option('ipb_show_email_column');
delete_option('ipb_show_campaign_column');
delete_site_option('ipb_show_campaign_column');
delete_option('ipb_show_privacy_column');
delete_site_option('ipb_show_privacy_column');
delete_option('ipb_show_status_column');
delete_site_option('ipb_show_status_column');
delete_option('ipb_show_actions_column');
delete_site_option('ipb_show_actions_column');
delete_option('ipb_default_status_filter');
delete_site_option('ipb_default_status_filter');
delete_option('instant_popup_builder_scroll_plugin');
delete_site_option('instant_popup_builder_scroll_plugin');
delete_option('instant_popup_builder_inactivity_plugin');
delete_site_option('instant_popup_builder_inactivity_plugin');
delete_option('instant_popup_builder_adblock_plugin');
delete_site_option('instant_popup_builder_adblock_plugin');
delete_option('instant_popup_builder_smart_plugin');
delete_site_option('instant_popup_builder_smart_plugin');
delete_option('instant_popup_woocommerce_plugin');
delete_site_option('instant_popup_woocommerce_plugin');
delete_option('ipb_pdf_enabled');
delete_site_option('ipb_pdf_enabled');
delete_option('analytics_plugin_active');
delete_site_option('analytics_plugin_active');
delete_option('instant_popup_custom_targeting_activated');
delete_site_option('instant_popup_custom_targeting_activated');
delete_option('instant_popup_scheduling_plugin_active');
delete_site_option('instant_popup_scheduling_plugin_active');
delete_option('instant_popup_contact_form_plugin');
delete_site_option('instant_popup_contact_form_plugin');
delete_option('recent_orders_license_active');
delete_site_option('recent_orders_license_active');
delete_option('ipb_geo_enabled');
delete_site_option('ipb_geo_enabled');
delete_option('instant_popup_builder_advanced_triggers');
delete_site_option('instant_popup_builder_advanced_triggers');
delete_option('instant_popup_builder_smart');
delete_site_option('instant_popup_builder_smart');
delete_option('ipsp_smart_popup_enabled');
delete_site_option('ipsp_smart_popup_enabled');
delete_option('analytics_license_active');
delete_site_option('analytics_license_active');
delete_option('pdf_license_active');
delete_site_option('pdf_license_active');
delete_option('video_license_active');
delete_site_option('video_license_active');
delete_option('ipb_activation_date');
delete_site_option('ipb_activation_date');
delete_option('ipb_mailchimp_api_key');
delete_site_option('ipb_mailchimp_api_key');
delete_option('ipb_mailchimp_list_id');
delete_site_option('ipb_mailchimp_list_id');
delete_option('ipb_unsubscribe_page_url');
delete_site_option('ipb_unsubscribe_page_url');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ipb_verification_template_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('instant_popup_builder_network_activated');
delete_site_option('instant_popup_builder_network_activated');

// Delete Transients
delete_transient('instant_popup_builder_popup_id');
delete_site_transient('instant_popup_builder_popup_id');
delete_transient('instant_popup_builder_popup_views');
delete_site_transient('instant_popup_builder_popup_views');
delete_transient('instant_popup_builder_delay');
delete_site_transient('instant_popup_builder_delay');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instant_popup_builder_close_position_%', '_site_transient_instant_popup_builder_close_position_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instant_popup_builder_close_escape_%', '_site_transient_instant_popup_builder_close_escape_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('instant_popup_builder_box_outside');
delete_site_transient('instant_popup_builder_box_outside');
delete_transient('instant_popup_builder_hide_close');
delete_site_transient('instant_popup_builder_hide_close');
delete_transient('instant_popup_builder_limit_count');
delete_site_transient('instant_popup_builder_limit_count');
delete_transient('instant_popup_builder_limit_expiry');
delete_site_transient('instant_popup_builder_limit_expiry');
delete_transient('instant_popup_builder_popup_position');
delete_site_transient('instant_popup_builder_popup_position');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instant_popup_builder_popup_class%', '_site_transient_instant_popup_builder_popup_class%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instant_popup_builder_class_hover%', '_site_transient_instant_popup_builder_class_hover%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instant_popup_builder_class_click%', '_site_transient_instant_popup_builder_class_click%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instant_popup_builder_trigger%', '_site_transient_instant_popup_builder_trigger%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instant_popup_builder_target_device%', '_site_transient_instant_popup_builder_target_device%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_exit_sensivity%', '_site_transient_exit_sensivity%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_exit_intent_options%', '_site_transient_exit_intent_options%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instant_popup_builder_scroll_type%', '_site_transient_instant_popup_builder_scroll_type%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instant_popup_builder_scroll_distance%', '_site_transient_instant_popup_builder_scroll_distance%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instant_popup_builder_scroll_trigger%', '_site_transient_instant_popup_builder_scroll_trigger%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instant_popup_builder_woo_trigger%', '_site_transient_instant_popup_builder_woo_trigger%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instant_popup_builder_woo_condition%', '_site_transient_instant_popup_builder_woo_condition%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instant_popup_builder_woocommerce_trigger%', '_site_transient_instant_popup_builder_woocommerce_trigger%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('instant_popup_builder_close_position');
delete_site_transient('instant_popup_builder_close_position');
delete_transient('instant_popup_builder_close_escape');
delete_site_transient('instant_popup_builder_close_escape');
delete_transient('instant_popup_builder_hover_close');
delete_site_transient('instant_popup_builder_hover_close');
delete_transient('back_color_toggle');
delete_site_transient('back_color_toggle');
delete_transient('popup_theme');
delete_site_transient('popup_theme');
delete_transient('background_color');
delete_site_transient('background_color');
delete_transient('back_image_toggle');
delete_site_transient('back_image_toggle');
delete_transient('background_image');
delete_site_transient('background_image');
delete_transient('back_image_pos_toggle');
delete_site_transient('back_image_pos_toggle');
delete_transient('back_img_position');
delete_site_transient('back_img_position');
delete_transient('back_image_size');
delete_site_transient('back_image_size');
delete_transient('backcolor_opacity');
delete_site_transient('backcolor_opacity');
delete_transient('backimage_opacity');
delete_site_transient('backimage_opacity');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_design_width%', '_site_transient_design_width%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_design_height%', '_site_transient_design_height%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_design_percentage%', '_site_transient_design_percentage%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_design_percentage_toggle%', '_site_transient_design_percentage_toggle%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('animate_type');
delete_site_transient('animate_type');
delete_transient('animate_speed');
delete_site_transient('animate_speed');
delete_transient('animate_origin');
delete_site_transient('animate_origin');
delete_transient('action');
delete_site_transient('action');
delete_transient('action_type');
delete_site_transient('action_type');
delete_transient('action_popup_id');
delete_site_transient('action_popup_id');
delete_transient('url');
delete_site_transient('url');
delete_transient('sound_open');
delete_site_transient('sound_open');
delete_transient('sound_close');
delete_site_transient('sound_close');
delete_transient('sound_open_file');
delete_site_transient('sound_open_file');
delete_transient('sound_close_file');
delete_site_transient('sound_close_file');
delete_transient('tab');
delete_site_transient('tab');
delete_transient('back_zindex');
delete_site_transient('back_zindex');
delete_transient('template_style');
delete_site_transient('template_style');
delete_transient('popup_main_title');
delete_site_transient('popup_main_title');
delete_transient('popup_description');
delete_site_transient('popup_description');
delete_transient('first_label');
delete_site_transient('first_label');
delete_transient('first_placeholder');
delete_site_transient('first_placeholder');
delete_transient('email_placeholder');
delete_site_transient('email_placeholder');
delete_transient('email_label');
delete_site_transient('email_label');
delete_transient('privacy_label');
delete_site_transient('privacy_label');
delete_transient('pricacy_url');
delete_site_transient('pricacy_url');
delete_transient('terms_url');
delete_site_transient('terms_url');
delete_transient('button_text');
delete_site_transient('button_text');
delete_transient('primary_color');
delete_site_transient('primary_color');
delete_transient('secondary_color');
delete_site_transient('secondary_color');
delete_transient('text_color');
delete_site_transient('text_color');
delete_transient('button_color');
delete_site_transient('button_color');
delete_transient('accent_color');
delete_site_transient('accent_color');
delete_transient('background_color_custom');
delete_site_transient('background_color_custom');
delete_transient('text_padding_top');
delete_site_transient('text_padding_top');
delete_transient('text_padding_right');
delete_site_transient('text_padding_right');
delete_transient('text_padding_bottom');
delete_site_transient('text_padding_bottom');
delete_transient('text_padding_left');
delete_site_transient('text_padding_left');
delete_transient('text_border_radius');
delete_site_transient('text_border_radius');
delete_transient('text_font_size');
delete_site_transient('text_font_size');
delete_transient('text_line_height');
delete_site_transient('text_line_height');

// Clear Cron Jobs
wp_clear_scheduled_hook('ipb_analytics_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ipb_review_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ipb_review_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ipb_review_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ipb_review_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ipb_review_already_given' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ipb_review_already_given' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ipb_review_already_given' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ipb_review_already_given' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ipb_popups_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ipb_popups_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ipb_popups_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ipb_popups_per_page' ) );

