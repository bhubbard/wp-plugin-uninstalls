<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('DQH_name_type');
delete_site_option('DQH_name_type');
delete_option('DQH_name');
delete_site_option('DQH_name');
delete_option('DQH_rewite');
delete_site_option('DQH_rewite');
delete_option('DQH_lang_parent_post');
delete_site_option('DQH_lang_parent_post');
delete_option('DQH_title_in_post');
delete_site_option('DQH_title_in_post');
delete_option('DQH_next_post');
delete_site_option('DQH_next_post');
delete_option('DQH_previous_post');
delete_site_option('DQH_previous_post');
delete_option('DQH_paging_chapter');
delete_site_option('DQH_paging_chapter');
delete_option('DQH_chapers_per_page');
delete_site_option('DQH_chapers_per_page');
delete_option('DQH_html_list');
delete_site_option('DQH_html_list');
delete_option('DQH_rewrite');
delete_site_option('DQH_rewrite');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mts_post_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mts_post_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mts_post_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mts_post_type' ) );

