<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'chrssen_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('chrssen_enabled');
delete_site_option('chrssen_enabled');
delete_option('chrssen_trigger_class');
delete_site_option('chrssen_trigger_class');
delete_option('chrssen_heading');
delete_site_option('chrssen_heading');
delete_option('chrssen_message');
delete_site_option('chrssen_message');
delete_option('chrssen_proceed_text');
delete_site_option('chrssen_proceed_text');
delete_option('chrssen_cancel_text');
delete_site_option('chrssen_cancel_text');
delete_option('chrssen_display_external_link');
delete_site_option('chrssen_display_external_link');
delete_option('chrssen_custom_popup_enabled');
delete_site_option('chrssen_custom_popup_enabled');
delete_option('chrssen_custom_popup_class');
delete_site_option('chrssen_custom_popup_class');
delete_option('chrssen_custom_popup_heading');
delete_site_option('chrssen_custom_popup_heading');
delete_option('chrssen_custom_popup_message');
delete_site_option('chrssen_custom_popup_message');
delete_option('chrssen_custom_popup_proceed');
delete_site_option('chrssen_custom_popup_proceed');
delete_option('chrssen_custom_popup_cancel');
delete_site_option('chrssen_custom_popup_cancel');
delete_option('chrssen_header_bg_color');
delete_site_option('chrssen_header_bg_color');
delete_option('chrssen_header_text_color');
delete_site_option('chrssen_header_text_color');
delete_option('chrssen_body_bg_color');
delete_site_option('chrssen_body_bg_color');
delete_option('chrssen_body_text_color');
delete_site_option('chrssen_body_text_color');
delete_option('chrssen_proceed_bg_color');
delete_site_option('chrssen_proceed_bg_color');
delete_option('chrssen_proceed_text_color');
delete_site_option('chrssen_proceed_text_color');
delete_option('chrssen_cancel_bg_color');
delete_site_option('chrssen_cancel_bg_color');
delete_option('chrssen_cancel_text_color');
delete_site_option('chrssen_cancel_text_color');
delete_option('chrssen_overlay_opacity');
delete_site_option('chrssen_overlay_opacity');
delete_option('chrssen_modal_width');
delete_site_option('chrssen_modal_width');
delete_option('chrssen_animation_style');
delete_site_option('chrssen_animation_style');
delete_option('chrssen_custom_css');
delete_site_option('chrssen_custom_css');
delete_option('chrssen_delay_enabled');
delete_site_option('chrssen_delay_enabled');
delete_option('chrssen_delay_seconds');
delete_site_option('chrssen_delay_seconds');
delete_option('chrssen_remember_enabled');
delete_site_option('chrssen_remember_enabled');
delete_option('chrssen_remember_duration');
delete_site_option('chrssen_remember_duration');
delete_option('chrssen_link_icon_enabled');
delete_site_option('chrssen_link_icon_enabled');
delete_option('chrssen_link_icon_position');
delete_site_option('chrssen_link_icon_position');
delete_option('chrssen_exception_classes');
delete_site_option('chrssen_exception_classes');
delete_option('chrssen_whitelisted_domains');
delete_site_option('chrssen_whitelisted_domains');
delete_option('chrssen_excluded_pages');
delete_site_option('chrssen_excluded_pages');
delete_option('chrssen_exception_class');
delete_site_option('chrssen_exception_class');

