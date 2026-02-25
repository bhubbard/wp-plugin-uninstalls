<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cs_sc_openai_api_key');
delete_site_option('cs_sc_openai_api_key');
delete_option('cs_sc_primary_color');
delete_site_option('cs_sc_primary_color');
delete_option('cs_sc_text_color');
delete_site_option('cs_sc_text_color');
delete_option('cs_sc_font_family');
delete_site_option('cs_sc_font_family');
delete_option('cs_sc_header_bg_color');
delete_site_option('cs_sc_header_bg_color');
delete_option('cs_sc_header_text_color');
delete_site_option('cs_sc_header_text_color');
delete_option('cs_sc_body_bg_color');
delete_site_option('cs_sc_body_bg_color');
delete_option('cs_sc_body_text_color');
delete_site_option('cs_sc_body_text_color');
delete_option('cs_sc_table_header_bg');
delete_site_option('cs_sc_table_header_bg');
delete_option('cs_sc_table_header_text');
delete_site_option('cs_sc_table_header_text');
delete_option('cs_sc_table_row_bg');
delete_site_option('cs_sc_table_row_bg');
delete_option('cs_sc_table_row_text');
delete_site_option('cs_sc_table_row_text');
delete_option('cs_sc_display_position');
delete_site_option('cs_sc_display_position');
delete_option('cs_sc_enable_ai_quiz');
delete_site_option('cs_sc_enable_ai_quiz');
delete_option('cs_sc_delete_on_uninstall');
delete_site_option('cs_sc_delete_on_uninstall');
delete_option('cs_sc_activated_time');
delete_site_option('cs_sc_activated_time');
delete_option('cs_sc_version');
delete_site_option('cs_sc_version');
delete_option('cs_sc_db_version');
delete_site_option('cs_sc_db_version');

// Delete Transients
delete_transient('cs_sc_flush_rewrite_rules');
delete_site_transient('cs_sc_flush_rewrite_rules');
delete_transient('cs_sc_stats_0');
delete_site_transient('cs_sc_stats_0');

// Clear Cron Jobs
wp_clear_scheduled_hook('cs_sc_daily_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cs_size_chart_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cs_size_chart_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cs_size_chart_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cs_size_chart_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cs_assignment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cs_assignment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cs_assignment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cs_assignment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cs_assigned_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cs_assigned_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cs_assigned_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cs_assigned_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cs_assigned_categories' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cs_assigned_categories' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cs_assigned_categories' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cs_assigned_categories' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cs_size_chart_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cs_size_chart_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cs_size_chart_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cs_size_chart_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cs_size_chart_display_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cs_size_chart_display_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cs_size_chart_display_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cs_size_chart_display_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cs_size_chart_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cs_size_chart_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cs_size_chart_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cs_size_chart_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cs_size_chart_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cs_size_chart_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cs_size_chart_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cs_size_chart_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cs_size_chart_quiz' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cs_size_chart_quiz' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cs_size_chart_quiz' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cs_size_chart_quiz' ) );

