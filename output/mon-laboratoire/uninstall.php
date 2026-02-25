<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MonLabo_settings_group10');
delete_site_option('MonLabo_settings_group10');
delete_option('MonLabo_settings_group4');
delete_site_option('MonLabo_settings_group4');
delete_option('MonLabo_settings_group3');
delete_site_option('MonLabo_settings_group3');
delete_option('MonLabo_settings_group1');
delete_site_option('MonLabo_settings_group1');
delete_option('MonLabo_settings_group2');
delete_site_option('MonLabo_settings_group2');
delete_option('MonLabo_settings_group7');
delete_site_option('MonLabo_settings_group7');
delete_option('MonLabo_settings_group0');
delete_site_option('MonLabo_settings_group0');
delete_option('MonLabo_settings_group5');
delete_site_option('MonLabo_settings_group5');
delete_option('MonLabo_settings_group11');
delete_site_option('MonLabo_settings_group11');
delete_option('MonLabo_settings_group8');
delete_site_option('MonLabo_settings_group8');
delete_option('MonLabo_settings_group9');
delete_site_option('MonLabo_settings_group9');
delete_option('MonLabo_settings_group6');
delete_site_option('MonLabo_settings_group6');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_theme_show_page_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_theme_show_page_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_theme_show_page_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_theme_show_page_title' ) );

