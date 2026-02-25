<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sssm_version');
delete_site_option('sssm_version');
delete_option('sssm_step3_hidden');
delete_site_option('sssm_step3_hidden');
delete_option('sssm_step3');
delete_site_option('sssm_step3');
delete_option('sssm_step4');
delete_site_option('sssm_step4');
delete_option('sssm_skip_activation');
delete_site_option('sssm_skip_activation');
delete_option('sssm_step5');
delete_site_option('sssm_step5');
delete_option('sssm_step6');
delete_site_option('sssm_step6');
delete_option('sssm_step1');
delete_site_option('sssm_step1');
delete_option('sssm_is_cloned_setting');
delete_site_option('sssm_is_cloned_setting');
delete_option('sssm_step2');
delete_site_option('sssm_step2');
delete_option('version');
delete_site_option('version');
delete_option('spiral_member_login');
delete_site_option('spiral_member_login');
delete_option('spiral_secure_session_manager');
delete_site_option('spiral_secure_session_manager');
delete_option('sssm_authentication_key');
delete_site_option('sssm_authentication_key');
delete_option('sssm_url');
delete_site_option('sssm_url');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sssm_session_expires_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sssm_session_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sssm_is_blank_page');
delete_site_option('sssm_is_blank_page');
delete_option('sml_is_setup');
delete_site_option('sml_is_setup');
delete_option('sssm_is_setup');
delete_site_option('sssm_is_setup');
delete_option('sssm_url_api_mode');
delete_site_option('sssm_url_api_mode');
delete_option('sssm_session_id');
delete_site_option('sssm_session_id');
delete_option('sssm_plugin_install_date');
delete_site_option('sssm_plugin_install_date');
delete_option('ssp_activate_step');
delete_site_option('ssp_activate_step');
delete_option('ssp_activate_screen');
delete_site_option('ssp_activate_screen');
delete_option('is_setup');
delete_site_option('is_setup');

// Delete Transients
delete_transient('sssm_activation_error');
delete_site_transient('sssm_activation_error');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sssm_auth_%', '_site_transient_sssm_auth_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('sssm_login_error');
delete_site_transient('sssm_login_error');
delete_transient('sssm_regenerate_page_message');
delete_site_transient('sssm_regenerate_page_message');
delete_transient('sssm_clear_cache_message');
delete_site_transient('sssm_clear_cache_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'soarsomngat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'soarsomngat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'soarsomngat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'soarsomngat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sssm_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sssm_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sssm_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sssm_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'spiral-s-member-page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'spiral-s-member-page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'spiral-s-member-page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'spiral-s-member-page' ) );

