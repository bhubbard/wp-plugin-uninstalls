<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dotslc_site_url');
delete_site_option('dotslc_site_url');
delete_option('dotslc_display_failure_ways');
delete_site_option('dotslc_display_failure_ways');
delete_option('dotslc_failure_message');
delete_site_option('dotslc_failure_message');
delete_option('dotslc_failure_redirect');
delete_site_option('dotslc_failure_redirect');
delete_option('dotslc_logo_show');
delete_site_option('dotslc_logo_show');
delete_option('dotslc_logo_image_id');
delete_site_option('dotslc_logo_image_id');
delete_option('dotslc_logo_width');
delete_site_option('dotslc_logo_width');
delete_option('dotslc_logo_height');
delete_site_option('dotslc_logo_height');
delete_option('dotslc_logo_url');
delete_site_option('dotslc_logo_url');
delete_option('dotslc_login_form_above_note');
delete_site_option('dotslc_login_form_above_note');
delete_option('dotslc_login_note_font_size');
delete_site_option('dotslc_login_note_font_size');
delete_option('dotslc_login_note_font_color');
delete_site_option('dotslc_login_note_font_color');
delete_option('dotslc_login_password_reset_note');
delete_site_option('dotslc_login_password_reset_note');
delete_option('dotslc_login_reset_password_link_disable');
delete_site_option('dotslc_login_reset_password_link_disable');
delete_option('dotslc_background_type');
delete_site_option('dotslc_background_type');
delete_option('dotslc_background_color');
delete_site_option('dotslc_background_color');
delete_option('dotslc_background_image_id');
delete_site_option('dotslc_background_image_id');
delete_option('dotslc_login_attempt_enable');
delete_site_option('dotslc_login_attempt_enable');
delete_option('dotslc_max_attempt');
delete_site_option('dotslc_max_attempt');
delete_option('dotslc_timeout');
delete_site_option('dotslc_timeout');
delete_option('dotslc_timeout_message');
delete_site_option('dotslc_timeout_message');
delete_option('dotslc_gcaptcha_enable');
delete_site_option('dotslc_gcaptcha_enable');
delete_option('dotslc_gcaptcha_version');
delete_site_option('dotslc_gcaptcha_version');
delete_option('dotslc_gcaptcha_v2_site_key');
delete_site_option('dotslc_gcaptcha_v2_site_key');
delete_option('dotslc_gcaptcha_v2_secret_key');
delete_site_option('dotslc_gcaptcha_v2_secret_key');
delete_option('dotslc_gcaptcha_v3_site_key');
delete_site_option('dotslc_gcaptcha_v3_site_key');
delete_option('dotslc_gcaptcha_v3_secret_key');
delete_site_option('dotslc_gcaptcha_v3_secret_key');
delete_option('dotslc_gcaptcha_theme');
delete_site_option('dotslc_gcaptcha_theme');
delete_option('dotslc_gcaptcha_threshold');
delete_site_option('dotslc_gcaptcha_threshold');
delete_option('dotslc_gcaptcha_size');
delete_site_option('dotslc_gcaptcha_size');
delete_option('dotslc_password_protection_enable');
delete_site_option('dotslc_password_protection_enable');
delete_option('dotslc_protection_password');
delete_site_option('dotslc_protection_password');
delete_option('dotslc_maintenance_enable');
delete_site_option('dotslc_maintenance_enable');
delete_option('dotslc_maintenance_heading');
delete_site_option('dotslc_maintenance_heading');
delete_option('dotslc_maintenance_message');
delete_site_option('dotslc_maintenance_message');
delete_option('dotslc_maintenance_background_image_id');
delete_site_option('dotslc_maintenance_background_image_id');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_dotslc_ip_locked_%', '_site_transient_dotslc_ip_locked_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_dotslc_user_attempts_%', '_site_transient_dotslc_user_attempts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

