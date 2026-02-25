<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_summarizer_aws_access_key');
delete_site_option('ai_summarizer_aws_access_key');
delete_option('ai_summarizer_aws_secret_key');
delete_site_option('ai_summarizer_aws_secret_key');
delete_option('ai_summarizer_aws_region');
delete_site_option('ai_summarizer_aws_region');
delete_option('ai_summarizer_bedrock_model_id');
delete_site_option('ai_summarizer_bedrock_model_id');
delete_option('ai_summarizer_summary_speed');
delete_site_option('ai_summarizer_summary_speed');
delete_option('ai_summarizer_summary_length');
delete_site_option('ai_summarizer_summary_length');
delete_option('ai_summarizer_widget_visibility');
delete_site_option('ai_summarizer_widget_visibility');
delete_option('ai_summarizer_post_types');
delete_site_option('ai_summarizer_post_types');
delete_option('ai_summarizer_key');
delete_site_option('ai_summarizer_key');
delete_option('ai_summarizer_configuration');
delete_site_option('ai_summarizer_configuration');
delete_option('ai_summarizer_model_type');
delete_site_option('ai_summarizer_model_type');
delete_option('ai_summarizer_widget_colour');
delete_site_option('ai_summarizer_widget_colour');
delete_option('ai_summarizer_widget_text');
delete_site_option('ai_summarizer_widget_text');
delete_option('ai_summarizer_widget_text_two');
delete_site_option('ai_summarizer_widget_text_two');
delete_option('ai_summarizer_widget_position');
delete_site_option('ai_summarizer_widget_position');

// Delete Transients
delete_transient('ai_summarizer_admin_notice');
delete_site_transient('ai_summarizer_admin_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ai_summary' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ai_summary' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ai_summary' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ai_summary' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'summary_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'summary_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'summary_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'summary_status' ) );

