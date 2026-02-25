<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sr_logo_image');
delete_site_option('sr_logo_image');
delete_option('sr_banner_image');
delete_site_option('sr_banner_image');
delete_option('sr_seodata');
delete_site_option('sr_seodata');
delete_option('sr_seodata_list');
delete_site_option('sr_seodata_list');
delete_option('sr_css');
delete_site_option('sr_css');
delete_option('sr_templates');
delete_site_option('sr_templates');
delete_option('sr_templates_extra');
delete_site_option('sr_templates_extra');
delete_option('sr_templates_list');
delete_site_option('sr_templates_list');
delete_option('sr_popup');
delete_site_option('sr_popup');
delete_option('sr-plugintext');
delete_site_option('sr-plugintext');
delete_option('sr_listingsOrder');
delete_site_option('sr_listingsOrder');
delete_option('sr_crm');
delete_site_option('sr_crm');
delete_option('sr_boot');
delete_site_option('sr_boot');
delete_option('sr_show_features');
delete_site_option('sr_show_features');
delete_option('sr_open_in_new_window');
delete_site_option('sr_open_in_new_window');
delete_option('sr_use_custom_pagi');
delete_site_option('sr_use_custom_pagi');
delete_option('bootstrap_refine');
delete_site_option('bootstrap_refine');
delete_option('bootstrap_refine_sc');
delete_site_option('bootstrap_refine_sc');
delete_option('sr_fq');
delete_site_option('sr_fq');
delete_option('sr_template');
delete_site_option('sr_template');
delete_option('sr_leadcapture');
delete_site_option('sr_leadcapture');
delete_option('sr_emailmethod');
delete_site_option('sr_emailmethod');
delete_option('sr_customform');
delete_site_option('sr_customform');
delete_option('sr_unfoundpage');
delete_site_option('sr_unfoundpage');
delete_option('sr-mailchimptoken');
delete_site_option('sr-mailchimptoken');
delete_option('sr-mailchimplist');
delete_site_option('sr-mailchimplist');
delete_option('sr_prioritization');
delete_site_option('sr_prioritization');
delete_option('fbid');
delete_site_option('fbid');
delete_option('googleid');
delete_site_option('googleid');
delete_option('sr_users');
delete_site_option('sr_users');
delete_option('sr-shortcode');
delete_site_option('sr-shortcode');
delete_option('sr_metadata');
delete_site_option('sr_metadata');
delete_option('sr_templates_community');
delete_site_option('sr_templates_community');
delete_option('sr_templates_overview');
delete_site_option('sr_templates_overview');
delete_option('sr_templates_features');
delete_site_option('sr_templates_features');
delete_option('sr_templates_map');
delete_site_option('sr_templates_map');
delete_option('sr_templates_video');
delete_site_option('sr_templates_video');
delete_option('sr_aceEditor');
delete_site_option('sr_aceEditor');
delete_option('sr-map');
delete_site_option('sr-map');
delete_option('sr_lastsitemap');
delete_site_option('sr_lastsitemap');
delete_option('sr_feed');
delete_site_option('sr_feed');
delete_option('srRewDB');
delete_site_option('srRewDB');
delete_option('sr_listingsViewStatistic');
delete_site_option('sr_listingsViewStatistic');
delete_option('sr_nonce');
delete_site_option('sr_nonce');
delete_option('sr_baseurl');
delete_site_option('sr_baseurl');
delete_option('sr_cacheoverride');
delete_site_option('sr_cacheoverride');
delete_option('my_plugin_version');
delete_site_option('my_plugin_version');
delete_option('sr_display_update_banner');
delete_site_option('sr_display_update_banner');
delete_option('sr_citypage_url_map');
delete_site_option('sr_citypage_url_map');
delete_option('sr_lastupdated');
delete_site_option('sr_lastupdated');

// Clear Cron Jobs
wp_clear_scheduled_hook('sr_purge_transients');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_date' ) );

