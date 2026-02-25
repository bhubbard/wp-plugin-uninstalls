<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_service');
delete_site_option('ai_service');
delete_option('groq_api_key');
delete_site_option('groq_api_key');
delete_option('gemini_api_key');
delete_site_option('gemini_api_key');
delete_option('hf_api_key');
delete_site_option('hf_api_key');
delete_option('super_programmatic_seo_campaigns');
delete_site_option('super_programmatic_seo_campaigns');
delete_option('super_programmatic_seo_company_details');
delete_site_option('super_programmatic_seo_company_details');
delete_option('pseo_company_details');
delete_site_option('pseo_company_details');
delete_option('super_programmatic_seo_monthly_usage');
delete_site_option('super_programmatic_seo_monthly_usage');
delete_option('super_programmatic_seo_api_settings');
delete_site_option('super_programmatic_seo_api_settings');

// Delete Transients
delete_transient('super_programmatic_seo_campaign_error');
delete_site_transient('super_programmatic_seo_campaign_error');
delete_transient('super_programmatic_seo_campaign_success');
delete_site_transient('super_programmatic_seo_campaign_success');

// Clear Cron Jobs
wp_clear_scheduled_hook('super_programmatic_seo_process_campaigns_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_super_programmatic_seo_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_super_programmatic_seo_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_super_programmatic_seo_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_super_programmatic_seo_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_super_programmatic_seo_generated_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_super_programmatic_seo_generated_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_super_programmatic_seo_generated_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_super_programmatic_seo_generated_date' ) );

