<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('new_message_ios');
delete_site_option('new_message_ios');
delete_option('new_message_android');
delete_site_option('new_message_android');
delete_option('new_startdelay');
delete_site_option('new_startdelay');
delete_option('new_lifespan');
delete_site_option('new_lifespan');
delete_option('new_expire_days');
delete_site_option('new_expire_days');
delete_option('new_animationin');
delete_site_option('new_animationin');
delete_option('new_animationout');
delete_site_option('new_animationout');
delete_option('new_bottomoffset');
delete_site_option('new_bottomoffset');
delete_option('new_touchicon_url');
delete_site_option('new_touchicon_url');
delete_option('new_web_app_title');
delete_site_option('new_web_app_title');
delete_option('new_returning_visitors_only');
delete_site_option('new_returning_visitors_only');
delete_option('new_precomposed_icon');
delete_site_option('new_precomposed_icon');
delete_option('new_enable_balloon_ios_frontend');
delete_site_option('new_enable_balloon_ios_frontend');
delete_option('new_install_prompt_android');
delete_site_option('new_install_prompt_android');
delete_option('new_enable_pwa');
delete_site_option('new_enable_pwa');
delete_option('new_balloon_display_frontend');
delete_site_option('new_balloon_display_frontend');
delete_option('new_athswp_frontend_pwa_start_url');
delete_site_option('new_athswp_frontend_pwa_start_url');
delete_option('new_athswp_pwa_custom_url');
delete_site_option('new_athswp_pwa_custom_url');
delete_option('new_athswp_delete_data_on_uninstall');
delete_site_option('new_athswp_delete_data_on_uninstall');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_simple_aths_first_visit_%', '_site_transient_simple_aths_first_visit_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_simple_aths_balloon_closed_%', '_site_transient_simple_aths_balloon_closed_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

