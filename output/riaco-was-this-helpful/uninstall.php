<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('riwth_show_admin_bar_content');
delete_site_option('riwth_show_admin_bar_content');
delete_option('riwth_feedback_box_thanks_text');
delete_site_option('riwth_feedback_box_thanks_text');
delete_option('riwth_load_scripts');
delete_site_option('riwth_load_scripts');
delete_option('riwth_load_styles');
delete_site_option('riwth_load_styles');
delete_option('riwth_feedback_box_color_background');
delete_site_option('riwth_feedback_box_color_background');
delete_option('riwth_feedback_box_text');
delete_site_option('riwth_feedback_box_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_button_icon' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_button_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_button' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('riwth_feedback_box_border_button_rounded');
delete_site_option('riwth_feedback_box_border_button_rounded');
delete_option('riwth_display_on');
delete_site_option('riwth_display_on');
delete_option('riwth_display_by_user_role');
delete_site_option('riwth_display_by_user_role');
delete_option('riwth_feedback_box_positive_button_icon');
delete_site_option('riwth_feedback_box_positive_button_icon');
delete_option('riwth_feedback_box_negative_button_icon');
delete_site_option('riwth_feedback_box_negative_button_icon');
delete_option('riwth_feedback_box_color_positive_button');
delete_site_option('riwth_feedback_box_color_positive_button');
delete_option('riwth_feedback_box_color_positive_text');
delete_site_option('riwth_feedback_box_color_positive_text');
delete_option('riwth_feedback_box_color_negative_button');
delete_site_option('riwth_feedback_box_color_negative_button');
delete_option('riwth_feedback_box_color_negative_text');
delete_site_option('riwth_feedback_box_color_negative_text');
delete_option('riwth_review_notice_done');
delete_site_option('riwth_review_notice_done');
delete_option('riwth_feedback_box_submitting_text');
delete_site_option('riwth_feedback_box_submitting_text');
delete_option('riwth_uninstall_remove_data');
delete_site_option('riwth_uninstall_remove_data');
delete_option('riwth_feedback_box_template');
delete_site_option('riwth_feedback_box_template');
delete_option('riwth_feedback_box_positive_button_text');
delete_site_option('riwth_feedback_box_positive_button_text');
delete_option('riwth_feedback_box_negative_button_text');
delete_site_option('riwth_feedback_box_negative_button_text');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_riwth_total_feedback_%', '_site_transient_riwth_total_feedback_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_riwth_positive_feedback_%', '_site_transient_riwth_positive_feedback_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('riwth_feedback_box');
delete_site_transient('riwth_feedback_box');
delete_transient('riwth_review_notice_maybe_later');
delete_site_transient('riwth_review_notice_maybe_later');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_riwth_reset_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_riwth_reset_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_riwth_reset_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_riwth_reset_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_riwth_disable_box' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_riwth_disable_box' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_riwth_disable_box' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_riwth_disable_box' ) );

