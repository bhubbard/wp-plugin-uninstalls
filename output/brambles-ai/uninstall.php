<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brambles_ai_auto_inject');
delete_site_option('brambles_ai_auto_inject');
delete_option('brambles_ai_cuid');
delete_site_option('brambles_ai_cuid');
delete_option('brambles_ai_position');
delete_site_option('brambles_ai_position');
delete_option('brambles_ai_primary_color');
delete_site_option('brambles_ai_primary_color');
delete_option('brambles_ai_secondary_color');
delete_site_option('brambles_ai_secondary_color');
delete_option('brambles_ai_welcome_message');
delete_site_option('brambles_ai_welcome_message');
delete_option('brambles_ai_header_title');
delete_site_option('brambles_ai_header_title');
delete_option('brambles_ai_proactive_engagement');
delete_site_option('brambles_ai_proactive_engagement');
delete_option('brambles_ai_stripe_connected');
delete_site_option('brambles_ai_stripe_connected');
delete_option('brambles_ai_stripe_account_id');
delete_site_option('brambles_ai_stripe_account_id');
delete_option('brambles_ai_debug');
delete_site_option('brambles_ai_debug');
delete_option('brambles_ai_api_base_url');
delete_site_option('brambles_ai_api_base_url');
delete_option('brambles_ai_install_secret');
delete_site_option('brambles_ai_install_secret');
delete_option('brambles_ai_onboard_log');
delete_site_option('brambles_ai_onboard_log');
delete_option('brambles_ai_onboarded');
delete_site_option('brambles_ai_onboarded');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_brambles_stripe_state_%', '_site_transient_brambles_stripe_state_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('brambles_ai_stripe_success');
delete_site_transient('brambles_ai_stripe_success');
delete_transient('brambles_ai_activation_redirect');
delete_site_transient('brambles_ai_activation_redirect');

