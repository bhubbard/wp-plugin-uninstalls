<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enweby_hfch_header_html');
delete_site_option('enweby_hfch_header_html');
delete_option('enweby_hfch_header_html_sticky');
delete_site_option('enweby_hfch_header_html_sticky');
delete_option('enweby_hfch_apply_to_header_options');
delete_site_option('enweby_hfch_apply_to_header_options');
delete_option('enweby_hfch_header_post_field_id');
delete_site_option('enweby_hfch_header_post_field_id');
delete_option('enweby_hfch_header_page_field_id');
delete_site_option('enweby_hfch_header_page_field_id');
delete_option('enweby_hfch_footer_html');
delete_site_option('enweby_hfch_footer_html');
delete_option('enweby_hfch_footer_html_sticky');
delete_site_option('enweby_hfch_footer_html_sticky');
delete_option('enweby_hfch_apply_to_footer_options');
delete_site_option('enweby_hfch_apply_to_footer_options');
delete_option('enweby_hfch_footer_post_field_id');
delete_site_option('enweby_hfch_footer_post_field_id');
delete_option('enweby_hfch_footer_page_field_id');
delete_site_option('enweby_hfch_footer_page_field_id');
delete_option('enweby_hfch_custom_script');
delete_site_option('enweby_hfch_custom_script');
delete_option('enweby_hfch_script_location');
delete_site_option('enweby_hfch_script_location');
delete_option('enweby_hfch_apply_to_scriptcss_options');
delete_site_option('enweby_hfch_apply_to_scriptcss_options');
delete_option('enweby_hfch_scriptcss_post_field_id');
delete_site_option('enweby_hfch_scriptcss_post_field_id');
delete_option('enweby_hfch_scriptcss_page_field_id');
delete_site_option('enweby_hfch_scriptcss_page_field_id');
delete_option('enweby_hfch_custom_css');
delete_site_option('enweby_hfch_custom_css');
delete_option('enweby_hfch_header_bg_color');
delete_site_option('enweby_hfch_header_bg_color');
delete_option('enweby_hfch_header_bg_image');
delete_site_option('enweby_hfch_header_bg_image');
delete_option('enweby_hfch_header_html_bg_repeat');
delete_site_option('enweby_hfch_header_html_bg_repeat');
delete_option('enweby_hfch_header_html_bg_position');
delete_site_option('enweby_hfch_header_html_bg_position');
delete_option('enweby_hfch_header_html_bg_attachment');
delete_site_option('enweby_hfch_header_html_bg_attachment');
delete_option('enweby_hfch_header_html_bg_size');
delete_site_option('enweby_hfch_header_html_bg_size');
delete_option('enweby_hfch_footer_bg_color');
delete_site_option('enweby_hfch_footer_bg_color');
delete_option('enweby_hfch_footer_bg_image');
delete_site_option('enweby_hfch_footer_bg_image');
delete_option('enweby_hfch_footer_html_bg_repeat');
delete_site_option('enweby_hfch_footer_html_bg_repeat');
delete_option('enweby_hfch_footer_html_bg_position');
delete_site_option('enweby_hfch_footer_html_bg_position');
delete_option('enweby_hfch_footer_html_bg_attachment');
delete_site_option('enweby_hfch_footer_html_bg_attachment');
delete_option('enweby_hfch_footer_html_bg_size');
delete_site_option('enweby_hfch_footer_html_bg_size');
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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'enwb_hfch_settings_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'enwb_hfch_settings_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'enwb_hfch_settings_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'enwb_hfch_settings_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'enwb_hfch_settings_meta_relation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'enwb_hfch_settings_meta_relation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'enwb_hfch_settings_meta_relation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'enwb_hfch_settings_meta_relation' ) );

