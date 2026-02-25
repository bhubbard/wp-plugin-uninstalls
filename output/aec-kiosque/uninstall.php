<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aec_load_kiosque_aec_build');
delete_site_option('aec_load_kiosque_aec_build');
delete_option('aec_instance_name');
delete_site_option('aec_instance_name');
delete_option('aec_extranet_instance_name');
delete_site_option('aec_extranet_instance_name');
delete_option('aec_extranet_api_token');
delete_site_option('aec_extranet_api_token');
delete_option('aec_etablishment_type');
delete_site_option('aec_etablishment_type');
delete_option('aec_course_detail_page_url');
delete_site_option('aec_course_detail_page_url');
delete_option('web_instance_domain');
delete_site_option('web_instance_domain');
delete_option('aec_template_in_use');
delete_site_option('aec_template_in_use');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'arc_extranet_domain' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'arc_extranet_domain' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'arc_extranet_domain' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'arc_extranet_domain' ) );

