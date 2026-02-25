<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_IQmaximages' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_IQshowthmbnails' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_IQshowaboutreviews' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_IQshowassetname' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_IQshowprices' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_IQshowdescription' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_IQshowimages' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_IQshowvideo' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_IQshowassetmetadata' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('IQdatasheet_template_IQmaximages');
delete_site_option('IQdatasheet_template_IQmaximages');
delete_option('IQdatasheet_template_IQshowthmbnails');
delete_site_option('IQdatasheet_template_IQshowthmbnails');
delete_option('IQdatasheet_template_IQshowaboutreviews');
delete_site_option('IQdatasheet_template_IQshowaboutreviews');
delete_option('IQdatasheet_template_IQshowassetname');
delete_site_option('IQdatasheet_template_IQshowassetname');
delete_option('IQdatasheet_template_IQshowprices');
delete_site_option('IQdatasheet_template_IQshowprices');
delete_option('IQdatasheet_template_IQshowdescription');
delete_site_option('IQdatasheet_template_IQshowdescription');
delete_option('IQdatasheet_template_IQshowimages');
delete_site_option('IQdatasheet_template_IQshowimages');
delete_option('IQdatasheet_template_IQshowvideo');
delete_site_option('IQdatasheet_template_IQshowvideo');
delete_option('IQdatasheet_template_IQshowassetmetadata');
delete_site_option('IQdatasheet_template_IQshowassetmetadata');

