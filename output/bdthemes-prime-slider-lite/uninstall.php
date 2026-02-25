<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bdt_biggopti_dismissals');
delete_site_option('bdt_biggopti_dismissals');
delete_option('prime_slider_third_party_widget');
delete_site_option('prime_slider_third_party_widget');
delete_option('elementor_use_mini_cart_template');
delete_site_option('elementor_use_mini_cart_template');
delete_option('ps_white_label_enabled');
delete_site_option('ps_white_label_enabled');
delete_option('ps_white_label_hide_license');
delete_site_option('ps_white_label_hide_license');
delete_option('ps_white_label_bdtps_hide');
delete_site_option('ps_white_label_bdtps_hide');
delete_option('ps_white_label_title');
delete_site_option('ps_white_label_title');
delete_option('ps_white_label_icon');
delete_site_option('ps_white_label_icon');
delete_option('ps_white_label_icon_id');
delete_site_option('ps_white_label_icon_id');
delete_option('ps_white_label_logo');
delete_site_option('ps_white_label_logo');
delete_option('ps_white_label_logo_id');
delete_site_option('ps_white_label_logo_id');
delete_option('prime_slider_license_title_status');
delete_site_option('prime_slider_license_title_status');
delete_option('ps_white_label_access_token');
delete_site_option('ps_white_label_access_token');
delete_option('ps_localhost_email_data');
delete_site_option('ps_localhost_email_data');
delete_option('ps_custom_css');
delete_site_option('ps_custom_css');
delete_option('ps_custom_js');
delete_site_option('ps_custom_js');
delete_option('ps_custom_css_2');
delete_site_option('ps_custom_css_2');
delete_option('ps_custom_js_2');
delete_site_option('ps_custom_js_2');
delete_option('ps_excluded_pages');
delete_site_option('ps_excluded_pages');
delete_option('prime_slider_license_key');
delete_site_option('prime_slider_license_key');
delete_option('prime_slider_license_email');
delete_site_option('prime_slider_license_email');
delete_option('prime_slider_activation_time');
delete_site_option('prime_slider_activation_time');
delete_option('prime_slider_backups');
delete_site_option('prime_slider_backups');
delete_option('prime_slider_installation_complete');
delete_site_option('prime_slider_installation_complete');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_installed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('prime_slider_active_modules');
delete_site_option('prime_slider_active_modules');
delete_option('prime_slider_elementor_extend');
delete_site_option('prime_slider_elementor_extend');
delete_option('bdtps_setup_wizard_completed');
delete_site_option('bdtps_setup_wizard_completed');
delete_option('elementor_viewport_lg');
delete_site_option('elementor_viewport_lg');
delete_option('elementor_viewport_md');
delete_site_option('elementor_viewport_md');

// Delete Transients
delete_transient('prime_slider_backup_checked');
delete_site_transient('prime_slider_backup_checked');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_dismissed_biggopti_%', '_site_transient_dismissed_biggopti_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );

