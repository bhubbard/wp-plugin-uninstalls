<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rpcfw_archive_custom_message');
delete_site_option('rpcfw_archive_custom_message');
delete_option('rpcfw_archive_page_message_text_color');
delete_site_option('rpcfw_archive_page_message_text_color');
delete_option('rpcfw_archive_page_message_background_color');
delete_site_option('rpcfw_archive_page_message_background_color');
delete_option('rpcfw_archive_page_message_text_alignment');
delete_site_option('rpcfw_archive_page_message_text_alignment');
delete_option('rpcfw_archive_page_message_text_padding');
delete_site_option('rpcfw_archive_page_message_text_padding');
delete_option('rpcfw_archive_page_message_text_font_size');
delete_site_option('rpcfw_archive_page_message_text_font_size');
delete_option('rpcfw_archive_custom_message_show_on');
delete_site_option('rpcfw_archive_custom_message_show_on');
delete_option('rpcfw_single_product_options');
delete_site_option('rpcfw_single_product_options');
delete_option('rpcfw_product_archive_pages_options');
delete_site_option('rpcfw_product_archive_pages_options');
delete_option('rpcfw_product_page_custom_message');
delete_site_option('rpcfw_product_page_custom_message');
delete_option('rpcfw_product_page_message_text_color');
delete_site_option('rpcfw_product_page_message_text_color');
delete_option('rpcfw_product_page_message_background_color');
delete_site_option('rpcfw_product_page_message_background_color');
delete_option('rpcfw_product_page_message_text_alignment');
delete_site_option('rpcfw_product_page_message_text_alignment');
delete_option('rpcfw_product_page_message_text_padding');
delete_site_option('rpcfw_product_page_message_text_padding');
delete_option('rpcfw_product_page_message_text_font_size');
delete_site_option('rpcfw_product_page_message_text_font_size');
delete_option('rpcfw_exclude_categories');
delete_site_option('rpcfw_exclude_categories');
delete_option('rpcfw_exclude_tags');
delete_site_option('rpcfw_exclude_tags');
delete_option('rpcfw_product_page_custom_message_show_on');
delete_site_option('rpcfw_product_page_custom_message_show_on');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rpcfw_igne_noti' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rpcfw_igne_noti' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rpcfw_igne_noti' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rpcfw_igne_noti' ) );

