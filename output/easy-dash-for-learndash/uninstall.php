<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tred_panel_widgets_to_show');
delete_site_option('tred_panel_widgets_to_show');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tred_get_students_number_%', '_site_transient_tred_get_students_number_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('tred_get_access_modes_existent');
delete_site_transient('tred_get_access_modes_existent');
delete_transient('tred_get_students_number_all_courses');
delete_site_transient('tred_get_students_number_all_courses');
delete_transient('tred_get_lessons_topics_quizzes_number');
delete_site_transient('tred_get_lessons_topics_quizzes_number');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_days', '_site_transient_%_days' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tred_learndash_get_item_all_time_activity_%', '_site_transient_tred_learndash_get_item_all_time_activity_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ld_price_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ld_price_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ld_price_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ld_price_type' ) );

