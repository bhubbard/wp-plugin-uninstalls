<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_wcv_timeout_limit');
delete_site_option('_wcv_timeout_limit');
delete_option('_wcv_position');
delete_site_option('_wcv_position');
delete_option('_wcv_icon');
delete_site_option('_wcv_icon');
delete_option('_wcv_weight_block');
delete_site_option('_wcv_weight_block');
delete_option('_wcv_message');
delete_site_option('_wcv_message');
delete_option('_wcv_message_one');
delete_site_option('_wcv_message_one');
delete_option('_wcv_use_js');
delete_site_option('_wcv_use_js');
delete_option('_wcvisitor_after_price');
delete_site_option('_wcvisitor_after_price');
delete_option('_wcvisitor_only_one_hide');
delete_site_option('_wcvisitor_only_one_hide');
delete_option('_wcv_fake_mode');
delete_site_option('_wcv_fake_mode');
delete_option('_wcv_fake_mode_from');
delete_site_option('_wcv_fake_mode_from');
delete_option('_wcv_fake_mode_to');
delete_site_option('_wcv_fake_mode_to');
delete_option('_wcv_live_mode');
delete_site_option('_wcv_live_mode');
delete_option('_wcv_fontawesome');
delete_site_option('_wcv_fontawesome');
delete_option('_wcv_live_seconds');
delete_site_option('_wcv_live_seconds');
delete_option('counter-visitor-newsletter');
delete_site_option('counter-visitor-newsletter');
delete_option('_WCVisitor_folder_name');
delete_site_option('_WCVisitor_folder_name');

// Clear Cron Jobs
wp_clear_scheduled_hook('wcvisitor_delete_files');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wcvisitor_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wcvisitor_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wcvisitor_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wcvisitor_version' ) );

