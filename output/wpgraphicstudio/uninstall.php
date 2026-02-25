<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpgs_version');
delete_site_option('wpgs_version');
delete_option('wpgs_version_upgraded_from');
delete_site_option('wpgs_version_upgraded_from');
delete_option('wpgs_remove_gallery_page');
delete_site_option('wpgs_remove_gallery_page');
delete_option('wpgs_update_language_options');
delete_site_option('wpgs_update_language_options');
delete_option('wpgs_update_help_options');
delete_site_option('wpgs_update_help_options');
delete_option('wpgs_doing_upgrade');
delete_site_option('wpgs_doing_upgrade');
delete_option('wpgs_completed_upgrades');
delete_site_option('wpgs_completed_upgrades');
delete_option('create_page');
delete_site_option('create_page');
delete_option('wpgs_wpgraphicstudio_install');
delete_site_option('wpgs_wpgraphicstudio_install');
delete_option('_wp_session_list');
delete_site_option('_wp_session_list');
delete_option('wpgs_wpgraphicstudio_logo_url');
delete_site_option('wpgs_wpgraphicstudio_logo_url');
delete_option('wpgs_wpgraphicstudio_nav_hex');
delete_site_option('wpgs_wpgraphicstudio_nav_hex');
delete_option('wpgs_wpgraphicstudio_belcher_box_url');
delete_site_option('wpgs_wpgraphicstudio_belcher_box_url');
delete_option('wpgs_wpgraphicstudio_buttons_url');
delete_site_option('wpgs_wpgraphicstudio_buttons_url');
delete_option('wpgs_wpgraphicstudio_cta_boxes_url');
delete_site_option('wpgs_wpgraphicstudio_cta_boxes_url');
delete_option('wpgs_wpgraphicstudio_web_boxes_url');
delete_site_option('wpgs_wpgraphicstudio_web_boxes_url');
delete_option('wpgs_wpgraphicstudio_headlines_url');
delete_site_option('wpgs_wpgraphicstudio_headlines_url');
delete_option('wpgs_wpgraphicstudio_per_gallery');
delete_site_option('wpgs_wpgraphicstudio_per_gallery');
delete_option('wpgs_wpgraphicstudio_per_members');
delete_site_option('wpgs_wpgraphicstudio_per_members');
delete_option('wpgs_wpgraphicstudio_delete_files');
delete_site_option('wpgs_wpgraphicstudio_delete_files');
delete_option('wpgs_wpgraphicstudio_email_graphics');
delete_site_option('wpgs_wpgraphicstudio_email_graphics');
delete_option('wpgs_wpgraphicstudio_remove_settings');
delete_site_option('wpgs_wpgraphicstudio_remove_settings');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

// Delete Transients
delete_transient('_wpgs_activation_redirect');
delete_site_transient('_wpgs_activation_redirect');
delete_transient('wpgs_check_protection_files');
delete_site_transient('wpgs_check_protection_files');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpgs_weekly_cron');
wp_clear_scheduled_hook('wpgs_daily_cron');
wp_clear_scheduled_hook('wp_session_garbage_collection');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'EmailSent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'EmailSent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'EmailSent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'EmailSent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ReSent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ReSent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ReSent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ReSent' ) );

