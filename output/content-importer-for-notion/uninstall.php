<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('content_importer_for_notion_style_p');
delete_site_option('content_importer_for_notion_style_p');
delete_option('content_importer_for_notion_style_h1');
delete_site_option('content_importer_for_notion_style_h1');
delete_option('content_importer_for_notion_style_h2');
delete_site_option('content_importer_for_notion_style_h2');
delete_option('content_importer_for_notion_style_h3');
delete_site_option('content_importer_for_notion_style_h3');
delete_option('content_importer_for_notion_style_li');
delete_site_option('content_importer_for_notion_style_li');
delete_option('content_importer_for_notion_style_ul');
delete_site_option('content_importer_for_notion_style_ul');
delete_option('content_importer_for_notion_style_quote');
delete_site_option('content_importer_for_notion_style_quote');
delete_option('content_importer_for_notion_style_hr');
delete_site_option('content_importer_for_notion_style_hr');
delete_option('content_importer_for_notion_style_table');
delete_site_option('content_importer_for_notion_style_table');
delete_option('content_importer_for_notion_style_row');
delete_site_option('content_importer_for_notion_style_row');
delete_option('content_importer_for_notion_image_size');
delete_site_option('content_importer_for_notion_image_size');
delete_option('content_importer_for_notion_style_img');
delete_site_option('content_importer_for_notion_style_img');
delete_option('content_importer_for_notion_column_tag');
delete_site_option('content_importer_for_notion_column_tag');
delete_option('content_importer_for_notion_style_column_div_wrapper');
delete_site_option('content_importer_for_notion_style_column_div_wrapper');
delete_option('content_importer_for_notion_style_column_table');
delete_site_option('content_importer_for_notion_style_column_table');
delete_option('content_importer_for_notion_style_column_row');
delete_site_option('content_importer_for_notion_style_column_row');
delete_option('content_importer_for_notion_style_column_div');
delete_site_option('content_importer_for_notion_style_column_div');
delete_option('content_importer_for_notion_style_column_col');
delete_site_option('content_importer_for_notion_style_column_col');
delete_option('content_importer_for_notion_style_col');
delete_site_option('content_importer_for_notion_style_col');
delete_option('content_importer_for_notion_api_key');
delete_site_option('content_importer_for_notion_api_key');
delete_option('content_importer_for_notion_database_url');
delete_site_option('content_importer_for_notion_database_url');
delete_option('content_importer_for_notion_custom_css');
delete_site_option('content_importer_for_notion_custom_css');

// Clear Cron Jobs
wp_clear_scheduled_hook('content_importer_for_notion_cron_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_importer_for_notion_cron_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_importer_for_notion_cron_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_importer_for_notion_cron_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_importer_for_notion_cron_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'notion_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'notion_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'notion_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'notion_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'attachment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'attachment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'attachment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'attachment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'notion_object_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'notion_object_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'notion_object_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'notion_object_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cron_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cron_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cron_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cron_interval' ) );

