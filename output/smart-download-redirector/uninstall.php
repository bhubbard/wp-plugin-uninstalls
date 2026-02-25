<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartdr_styles');
delete_site_option('smartdr_styles');
delete_option('smartdr_destination_styles');
delete_site_option('smartdr_destination_styles');
delete_option('smartdr_rate_limit');
delete_site_option('smartdr_rate_limit');
delete_option('smartdr_target_domains');
delete_site_option('smartdr_target_domains');
delete_option('smartdr_custom_heading');
delete_site_option('smartdr_custom_heading');
delete_option('smartdr_manual_link_text');
delete_site_option('smartdr_manual_link_text');
delete_option('smartdr_show_title');
delete_site_option('smartdr_show_title');
delete_option('smartdr_show_manual_link');
delete_site_option('smartdr_show_manual_link');
delete_option('smartdr_layout_style');
delete_site_option('smartdr_layout_style');
delete_option('smartdr_countdown_time');
delete_site_option('smartdr_countdown_time');
delete_option('smartdr_redirect_delay');
delete_site_option('smartdr_redirect_delay');
delete_option('smartdr_shortcode_page');
delete_site_option('smartdr_shortcode_page');
delete_option('smartdr_show_destination');
delete_site_option('smartdr_show_destination');
delete_option('smartdr_destination_display_step');
delete_site_option('smartdr_destination_display_step');
delete_option('smartdr_manual_link_display_step');
delete_site_option('smartdr_manual_link_display_step');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'smartdr_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_smartdr_option_updated_%', '_site_transient_smartdr_option_updated_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

