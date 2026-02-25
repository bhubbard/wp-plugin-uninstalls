<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wc_settings_tab_emercury_api_key');
delete_site_option('wc_settings_tab_emercury_api_key');
delete_option('wc_settings_tab_emercury_email');
delete_site_option('wc_settings_tab_emercury_email');
delete_option('wc_settings_tab_emercury_section_audiences');
delete_site_option('wc_settings_tab_emercury_section_audiences');
delete_option('wc_marketing_settings_tab_emercury_checkbox');
delete_site_option('wc_marketing_settings_tab_emercury_checkbox');
delete_option('wc_marketing_settings_tab_emercury_section_checkbox_title');
delete_site_option('wc_marketing_settings_tab_emercury_section_checkbox_title');
delete_option('wc_marketing_settings_tab_emercury_section_audiences');
delete_site_option('wc_marketing_settings_tab_emercury_section_audiences');
delete_option('wc_settings_tab_emercury_force_campaign_enable');
delete_site_option('wc_settings_tab_emercury_force_campaign_enable');
delete_option('wc_settings_tab_emercury_force_campaign_automation_id');
delete_site_option('wc_settings_tab_emercury_force_campaign_automation_id');
delete_option('wc_settings_tab_emercury_force_campaign_list_id');
delete_site_option('wc_settings_tab_emercury_force_campaign_list_id');

// Delete Transients
delete_transient('wc_marketing_settings_updated');
delete_site_transient('wc_marketing_settings_updated');

// Clear Cron Jobs
wp_clear_scheduled_hook('woocommerce_emercury_ac_send_action');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_date_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_date_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_date_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_date_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_customer_ip_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_customer_ip_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_customer_ip_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_customer_ip_address' ) );

