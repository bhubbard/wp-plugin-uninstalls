<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cl_post_pingfm_api_key');
delete_site_option('cl_post_pingfm_api_key');
delete_option('cl_post_pingfm_message_template_1');
delete_site_option('cl_post_pingfm_message_template_1');
delete_option('cl_post_pingfm_message_template_2');
delete_site_option('cl_post_pingfm_message_template_2');
delete_option('cl_post_pingfm_message_template_3');
delete_site_option('cl_post_pingfm_message_template_3');
delete_option('cl_post_pingfm_message_template_4');
delete_site_option('cl_post_pingfm_message_template_4');
delete_option('cl_post_pingfm_message_template_5');
delete_site_option('cl_post_pingfm_message_template_5');
delete_option('cl_post_pingfm_message_template_6');
delete_site_option('cl_post_pingfm_message_template_6');
delete_option('cl_post_pingfm_message_template_7');
delete_site_option('cl_post_pingfm_message_template_7');
delete_option('cl_post_pingfm_message_template_8');
delete_site_option('cl_post_pingfm_message_template_8');
delete_option('cl_post_pingfm_message_template_9');
delete_site_option('cl_post_pingfm_message_template_9');
delete_option('cl_post_pingfm_message_template_10');
delete_site_option('cl_post_pingfm_message_template_10');
delete_option('cr_ping_connection_method');
delete_site_option('cr_ping_connection_method');
delete_option('cr_post_pingfm_template_mode');
delete_site_option('cr_post_pingfm_template_mode');
delete_option('cl_post_pingfm_ping_mode');
delete_site_option('cl_post_pingfm_ping_mode');
delete_option('cl_post_pingfm_ping_mode_category');
delete_site_option('cl_post_pingfm_ping_mode_category');
delete_option('cl_post_pingfm_publish_mode');
delete_site_option('cl_post_pingfm_publish_mode');
delete_option('cl_post_pingfm_republish_template');
delete_site_option('cl_post_pingfm_republish_template');
delete_option('cl_post_pingfm_ping_republish_template_text');
delete_site_option('cl_post_pingfm_ping_republish_template_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cr_post_2_pingfm_submit_post_submitted_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cl_post_pingfm_message_template_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_1' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_2' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_3' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_4' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_5' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cr_post_2_pingfm_custom_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cr_post_2_pingfm_custom_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cr_post_2_pingfm_custom_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cr_post_2_pingfm_custom_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cr_post_2_pingfm_dont_ping_this_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cr_post_2_pingfm_dont_ping_this_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cr_post_2_pingfm_dont_ping_this_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cr_post_2_pingfm_dont_ping_this_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cr_post_2_pingfm_custom_message_send_on_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cr_post_2_pingfm_custom_message_send_on_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cr_post_2_pingfm_custom_message_send_on_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cr_post_2_pingfm_custom_message_send_on_update' ) );

