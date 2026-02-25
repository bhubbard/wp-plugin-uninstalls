<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_inlire_show_phpver_notice');
delete_site_option('wc_inlire_show_phpver_notice');
delete_option('wc_inlire_show_wcver_notice');
delete_site_option('wc_inlire_show_wcver_notice');
delete_option('wc_inlire_show_curl_notice');
delete_site_option('wc_inlire_show_curl_notice');
delete_option('wc_inlire_show_urlservice_notice');
delete_site_option('wc_inlire_show_urlservice_notice');
delete_option('wc_inlire_show_token_notice');
delete_site_option('wc_inlire_show_token_notice');
delete_option('wc_inlire_show_maxamount_notice');
delete_site_option('wc_inlire_show_maxamount_notice');
delete_option('woocommerce_inlire_settings');
delete_site_option('woocommerce_inlire_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_inlire_version');
delete_site_option('wc_inlire_version');

