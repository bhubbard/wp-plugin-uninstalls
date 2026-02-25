<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ocssl');
delete_site_option('ocssl');
delete_option('ocssl_areas');
delete_site_option('ocssl_areas');
delete_option('ocssl_activation_redirect');
delete_site_option('ocssl_activation_redirect');
delete_option('ocssl_nonsslredirect');
delete_site_option('ocssl_nonsslredirect');
delete_option('ocssl_ratereview_scheduled');
delete_site_option('ocssl_ratereview_scheduled');
delete_option('ocssl_dismissed-ssloff');
delete_site_option('ocssl_dismissed-ssloff');
delete_option('ocssl_dismissed-ratereview');
delete_site_option('ocssl_dismissed-ratereview');
delete_option('ocssl_toolsmenu');
delete_site_option('ocssl_toolsmenu');
delete_option('ocssl_global');
delete_site_option('ocssl_global');
delete_option('ocssl_showmessage_ratereview');
delete_site_option('ocssl_showmessage_ratereview');
delete_option('ocssl_hidemessage_ratereview');
delete_site_option('ocssl_hidemessage_ratereview');
delete_option('one_click_ssl_smart_rating_dismissed');
delete_site_option('one_click_ssl_smart_rating_dismissed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ocssl_dismissed-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ocssl_auth_username');
delete_site_option('ocssl_auth_username');
delete_option('ocssl_auth_password');
delete_site_option('ocssl_auth_password');
delete_option('ocssl_basic_auth_required');
delete_site_option('ocssl_basic_auth_required');

// Delete Transients
delete_transient('ocssl_settings_notice');
delete_site_transient('ocssl_settings_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('ocssl_ratereviewhook');

