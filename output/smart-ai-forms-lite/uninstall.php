<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smaraifo_notification_emails');
delete_site_option('smaraifo_notification_emails');
delete_option('smaraifo_db_version');
delete_site_option('smaraifo_db_version');
delete_option('smaraifo_smtp_enable');
delete_site_option('smaraifo_smtp_enable');
delete_option('smaraifo_email_from_name');
delete_site_option('smaraifo_email_from_name');
delete_option('smaraifo_email_from');
delete_site_option('smaraifo_email_from');
delete_option('smaraifo_email_reply_to');
delete_site_option('smaraifo_email_reply_to');
delete_option('smaraifo_smtp_host');
delete_site_option('smaraifo_smtp_host');
delete_option('smaraifo_smtp_port');
delete_site_option('smaraifo_smtp_port');
delete_option('smaraifo_smtp_encr');
delete_site_option('smaraifo_smtp_encr');
delete_option('smaraifo_smtp_auth');
delete_site_option('smaraifo_smtp_auth');
delete_option('smaraifo_smtp_user');
delete_site_option('smaraifo_smtp_user');
delete_option('smaraifo_smtp_pass');
delete_site_option('smaraifo_smtp_pass');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_button_styles' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_customization' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_field_styles' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('smaraifo_customizer_selected_form');
delete_site_option('smaraifo_customizer_selected_form');
delete_option('smaraifo_button_background_color');
delete_site_option('smaraifo_button_background_color');
delete_option('smaraifo_button_text_color');
delete_site_option('smaraifo_button_text_color');
delete_option('smaraifo_button_border_radius');
delete_site_option('smaraifo_button_border_radius');
delete_option('smaraifo_button_border_width');
delete_site_option('smaraifo_button_border_width');
delete_option('smaraifo_button_border_color');
delete_site_option('smaraifo_button_border_color');
delete_option('smaraifo_button_padding_top');
delete_site_option('smaraifo_button_padding_top');
delete_option('smaraifo_button_padding_right');
delete_site_option('smaraifo_button_padding_right');
delete_option('smaraifo_button_padding_bottom');
delete_site_option('smaraifo_button_padding_bottom');
delete_option('smaraifo_button_padding_left');
delete_site_option('smaraifo_button_padding_left');
delete_option('smaraifo_button_width');
delete_site_option('smaraifo_button_width');
delete_option('smaraifo_button_alignment');
delete_site_option('smaraifo_button_alignment');
delete_option('smaraifo_button_margin_top');
delete_site_option('smaraifo_button_margin_top');
delete_option('smaraifo_button_margin_bottom');
delete_site_option('smaraifo_button_margin_bottom');
delete_option('smaraifo_button_hover_background_color');
delete_site_option('smaraifo_button_hover_background_color');
delete_option('smaraifo_button_hover_text_color');
delete_site_option('smaraifo_button_hover_text_color');
delete_option('smaraifo_field_border_radius');
delete_site_option('smaraifo_field_border_radius');
delete_option('smaraifo_field_border_width');
delete_site_option('smaraifo_field_border_width');
delete_option('smaraifo_field_border_color');
delete_site_option('smaraifo_field_border_color');
delete_option('smaraifo_field_background_color');
delete_site_option('smaraifo_field_background_color');
delete_option('smaraifo_field_text_color');
delete_site_option('smaraifo_field_text_color');
delete_option('smaraifo_field_font_size');
delete_site_option('smaraifo_field_font_size');
delete_option('smaraifo_field_padding_top');
delete_site_option('smaraifo_field_padding_top');
delete_option('smaraifo_field_padding_right');
delete_site_option('smaraifo_field_padding_right');
delete_option('smaraifo_field_padding_bottom');
delete_site_option('smaraifo_field_padding_bottom');
delete_option('smaraifo_field_padding_left');
delete_site_option('smaraifo_field_padding_left');
delete_option('smaraifo_label_color');
delete_site_option('smaraifo_label_color');
delete_option('smaraifo_label_font_size');
delete_site_option('smaraifo_label_font_size');
delete_option('smaraifo_label_font_weight');
delete_site_option('smaraifo_label_font_weight');
delete_option('smaraifo_field_placeholder_color');
delete_site_option('smaraifo_field_placeholder_color');
delete_option('smaraifo_field_focus_border_color');
delete_site_option('smaraifo_field_focus_border_color');
delete_option('smaraifo_field_focus_shadow_color');
delete_site_option('smaraifo_field_focus_shadow_color');
delete_option('smaraifo_version');
delete_site_option('smaraifo_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('smaraifo_cleanup_export');

