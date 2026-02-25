<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autowp_settings');
delete_site_option('autowp_settings');
delete_option('autowp_show_setup');
delete_site_option('autowp_show_setup');
delete_option('autowp_linking_settings');
delete_site_option('autowp_linking_settings');
delete_option('autowp_post_settings');
delete_site_option('autowp_post_settings');
delete_option('autowp_alerts');
delete_site_option('autowp_alerts');
delete_option('autowp_announcements');
delete_site_option('autowp_announcements');
delete_option('autowp_dismissed_announcements');
delete_site_option('autowp_dismissed_announcements');
delete_option('autowp_rewriting_promptscheme');
delete_site_option('autowp_rewriting_promptscheme');
delete_option('autowp_writing_promptscheme');
delete_site_option('autowp_writing_promptscheme');

// Clear Cron Jobs
wp_clear_scheduled_hook('autowp_fetch_announcements');
wp_clear_scheduled_hook('autowp_cron');
wp_clear_scheduled_hook('autowp_manual_post_rss_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_faq_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_faq_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_faq_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_faq_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'managetoplevel_page_list_tablecolumnshidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'managetoplevel_page_list_tablecolumnshidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'managetoplevel_page_list_tablecolumnshidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'managetoplevel_page_list_tablecolumnshidden' ) );

