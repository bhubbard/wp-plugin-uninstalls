<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dcl_general_profession_routing_active');
delete_site_option('dcl_general_profession_routing_active');
delete_option('dcl_general_add_profession_routing');
delete_site_option('dcl_general_add_profession_routing');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'dcl_general_jobs%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dcl_general_hide_menu_items');
delete_site_option('dcl_general_hide_menu_items');
delete_option('dcl_general_login_id_debug');
delete_site_option('dcl_general_login_id_debug');
delete_option('dcl_client_secret_debug');
delete_site_option('dcl_client_secret_debug');
delete_option('dcl_general_login_id');
delete_site_option('dcl_general_login_id');
delete_option('dcl_client_secret');
delete_site_option('dcl_client_secret');
delete_option('dcl_general_jobs');
delete_site_option('dcl_general_jobs');
delete_option('dcl_general_pages');
delete_site_option('dcl_general_pages');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'dcl_general_pages%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dcl_form_size');
delete_site_option('dcl_form_size');
delete_option('dcl_form_language');
delete_site_option('dcl_form_language');
delete_option('dcl_form_custom_template');
delete_site_option('dcl_form_custom_template');
delete_option('dcl_form_custom_template_width');
delete_site_option('dcl_form_custom_template_width');
delete_option('dcl_form_custom_template_height');
delete_site_option('dcl_form_custom_template_height');
delete_option('dcl_general_set_language_by_wpml');
delete_site_option('dcl_general_set_language_by_wpml');
delete_option('dcl_general_login_page_id');
delete_site_option('dcl_general_login_page_id');
delete_option('dcl_general_redirect_page_id');
delete_site_option('dcl_general_redirect_page_id');
delete_option('dcl_general_professional_circles_page_id');
delete_site_option('dcl_general_professional_circles_page_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dcl_group_routing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dcl_group_routing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dcl_group_routing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dcl_group_routing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dcl_restrict_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dcl_restrict_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dcl_restrict_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dcl_restrict_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dcl_all_group' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dcl_all_group' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dcl_all_group' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dcl_all_group' ) );

