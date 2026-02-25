<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csld_version');
delete_site_option('csld_version');
delete_option('wn_course_schedular_general_settings');
delete_site_option('wn_course_schedular_general_settings');
delete_option('wn_course_schedular_course_settings');
delete_site_option('wn_course_schedular_course_settings');
delete_option('wn_course_schedular_lesson_settings');
delete_site_option('wn_course_schedular_lesson_settings');
delete_option('wn_course_schedular_quiz_settings');
delete_site_option('wn_course_schedular_quiz_settings');
delete_option('wn_course_schedular_topic_settings');
delete_site_option('wn_course_schedular_topic_settings');
delete_option('course_scheduler_ld_addon_setting');
delete_site_option('course_scheduler_ld_addon_setting');
delete_option('cs_ld_addon_show_course_message');
delete_site_option('cs_ld_addon_show_course_message');
delete_option('cs_ld_addon_hide_course_message');
delete_site_option('cs_ld_addon_hide_course_message');
delete_option('cs_ld_addon_show_lesson_message');
delete_site_option('cs_ld_addon_show_lesson_message');
delete_option('cs_ld_addon_hide_lesson_message');
delete_site_option('cs_ld_addon_hide_lesson_message');
delete_option('cs_ld_addon_show_quiz_message');
delete_site_option('cs_ld_addon_show_quiz_message');
delete_option('cs_ld_addon_hide_quiz_message');
delete_site_option('cs_ld_addon_hide_quiz_message');
delete_option('cs_ld_addon_show_topic_message');
delete_site_option('cs_ld_addon_show_topic_message');
delete_option('cs_ld_addon_hide_topic_message');
delete_site_option('cs_ld_addon_hide_topic_message');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('csld_review_dismissed');
delete_site_transient('csld_review_dismissed');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'course_schedule' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'course_schedule' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'course_schedule' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'course_schedule' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sfwd-lessons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sfwd-lessons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sfwd-lessons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sfwd-lessons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sfwd-quiz' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sfwd-quiz' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sfwd-quiz' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sfwd-quiz' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sfwd-topic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sfwd-topic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sfwd-topic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sfwd-topic' ) );

