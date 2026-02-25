<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('utg_tour_option');
delete_site_option('utg_tour_option');
delete_option('start_immidiately');
delete_site_option('start_immidiately');
delete_option('auto_start_for_new_user');
delete_site_option('auto_start_for_new_user');
delete_option('show_begin_tour');
delete_site_option('show_begin_tour');
delete_option('show_dots');
delete_site_option('show_dots');
delete_option('show_close_button');
delete_site_option('show_close_button');
delete_option('show_prev_button');
delete_site_option('show_prev_button');
delete_option('show_next_button');
delete_site_option('show_next_button');
delete_option('show_step_progress');
delete_site_option('show_step_progress');
delete_option('enable_keyboard_control');
delete_site_option('enable_keyboard_control');
delete_option('exit_on_escape');
delete_site_option('exit_on_escape');
delete_option('exit_on_click_outside');
delete_site_option('exit_on_click_outside');
delete_option('utgk_plugin_activation_date');
delete_site_option('utgk_plugin_activation_date');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'utg_admin_tour' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'utg_admin_tour' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'utg_admin_tour' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'utg_admin_tour' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'utgk_plugin_review_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'utgk_plugin_review_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'utgk_plugin_review_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'utgk_plugin_review_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'utgk_plugin_review_later' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'utgk_plugin_review_later' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'utgk_plugin_review_later' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'utgk_plugin_review_later' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'utgk_plugin_review_later_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'utgk_plugin_review_later_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'utgk_plugin_review_later_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'utgk_plugin_review_later_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'complete_or_skip_tour' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'complete_or_skip_tour' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'complete_or_skip_tour' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'complete_or_skip_tour' ) );

