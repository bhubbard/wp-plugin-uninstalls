<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aws_access_key_id');
delete_site_option('aws_access_key_id');
delete_option('aws_access_key_secret');
delete_site_option('aws_access_key_secret');
delete_option('amtap_headline');
delete_site_option('amtap_headline');
delete_option('amtap_target');
delete_site_option('amtap_target');
delete_option('amtap_rating');
delete_site_option('amtap_rating');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'amtap_associate_id_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('amtap_associate_default');
delete_site_option('amtap_associate_default');
delete_option('amtap_ip2country');
delete_site_option('amtap_ip2country');
delete_option('amtap_default_tags');
delete_site_option('amtap_default_tags');
delete_option('amtap_xml_maxage');
delete_site_option('amtap_xml_maxage');
delete_option('amtap_item_response_group');
delete_site_option('amtap_item_response_group');
delete_option('amtap_donation');
delete_site_option('amtap_donation');
delete_option('amtap_debug');
delete_site_option('amtap_debug');
delete_option('amtap_key_status');
delete_site_option('amtap_key_status');

