<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Zotpress_DefaultAccount');
delete_site_option('Zotpress_DefaultAccount');
delete_option('Zotpress_cache_version');
delete_site_option('Zotpress_cache_version');
delete_option('Zotpress_DefaultCPT');
delete_site_option('Zotpress_DefaultCPT');
delete_option('Zotpress_DefaultEditor');
delete_site_option('Zotpress_DefaultEditor');
delete_option('Zotpress_DefaultStyle');
delete_site_option('Zotpress_DefaultStyle');
delete_option('Zotpress_StyleList');
delete_site_option('Zotpress_StyleList');
delete_option('Zotpress_update_version');
delete_site_option('Zotpress_update_version');
delete_option('Zotpress_main_db_version');
delete_site_option('Zotpress_main_db_version');
delete_option('Zotpress_oauth_db_version');
delete_site_option('Zotpress_oauth_db_version');
delete_option('Zotpress_zoteroItems_db_version');
delete_site_option('Zotpress_zoteroItems_db_version');
delete_option('Zotpress_zoteroCollections_db_version');
delete_site_option('Zotpress_zoteroCollections_db_version');
delete_option('Zotpress_zoteroTags_db_version');
delete_site_option('Zotpress_zoteroTags_db_version');
delete_option('Zotpress_zoteroRelItemColl_db_version');
delete_site_option('Zotpress_zoteroRelItemColl_db_version');
delete_option('Zotpress_zoteroRelItemTags_db_version');
delete_site_option('Zotpress_zoteroRelItemTags_db_version');
delete_option('Zotpress_zoteroItemImages_db_version');
delete_site_option('Zotpress_zoteroItemImages_db_version');
delete_option('Zotpress_update_notice_dismissed');
delete_site_option('Zotpress_update_notice_dismissed');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zotpress_5_2_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zotpress_5_2_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zotpress_5_2_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zotpress_5_2_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zotpress_survey_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zotpress_survey_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zotpress_survey_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zotpress_survey_notice_ignore' ) );

