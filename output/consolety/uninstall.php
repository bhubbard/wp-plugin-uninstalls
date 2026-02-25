<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('consolety_news_lastupdate');
delete_site_option('consolety_news_lastupdate');
delete_option('consolety_news_id');
delete_site_option('consolety_news_id');
delete_option('consolety_news_class');
delete_site_option('consolety_news_class');
delete_option('consolety_news_content');
delete_site_option('consolety_news_content');
delete_option('consolety_connected');
delete_site_option('consolety_connected');
delete_option('last_site_connect_check_user');
delete_site_option('last_site_connect_check_user');
delete_option('update_site_connect_check_user');
delete_site_option('update_site_connect_check_user');
delete_option('consolety_site_object_lastupdate');
delete_site_option('consolety_site_object_lastupdate');
delete_option('consolety_site_object');
delete_site_option('consolety_site_object');
delete_option('consolety_last_flush');
delete_site_option('consolety_last_flush');
delete_option('consolety_no_sync');
delete_site_option('consolety_no_sync');
delete_option('consolety_export_finished_once');
delete_site_option('consolety_export_finished_once');
delete_option('consolety_styles');
delete_site_option('consolety_styles');
delete_option('consolety_seo_secretkey');
delete_site_option('consolety_seo_secretkey');
delete_option('consolety-design_to_emails');
delete_site_option('consolety-design_to_emails');
delete_option('consolety-design_period_minutes');
delete_site_option('consolety-design_period_minutes');
delete_option('consolety-design_with_delay');
delete_site_option('consolety-design_with_delay');
delete_option('consoletySeoKey');
delete_site_option('consoletySeoKey');
delete_option('сonsolety_news_dismiss_id');
delete_site_option('сonsolety_news_dismiss_id');
delete_option('consolety_db_version');
delete_site_option('consolety_db_version');
delete_option('consolety_copyright');
delete_site_option('consolety_copyright');
delete_option('consolety_feed_mode');
delete_site_option('consolety_feed_mode');
delete_option('consolety_feed_url');
delete_site_option('consolety_feed_url');
delete_option('consolety_event_lastupdate');
delete_site_option('consolety_event_lastupdate');
delete_option('consolety_sync_lastupdate');
delete_site_option('consolety_sync_lastupdate');
delete_option('consolety_sync_last_id');
delete_site_option('consolety_sync_last_id');
delete_option('consolety_site_network');
delete_site_option('consolety_site_network');
delete_option('consoletySeoDisp');
delete_site_option('consoletySeoDisp');
delete_option('consolety_post_types');
delete_site_option('consolety_post_types');
delete_option('consolety_install_finished');
delete_site_option('consolety_install_finished');
delete_option('install_finished');
delete_site_option('install_finished');
delete_option('consolety_last_activity');
delete_site_option('consolety_last_activity');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'consolety-export' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'consolety-export' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'consolety-export' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'consolety-export' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'exported_to_consolety' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'exported_to_consolety' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'exported_to_consolety' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'exported_to_consolety' ) );

