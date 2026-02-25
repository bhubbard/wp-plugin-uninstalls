<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('envira_lite_version');
delete_site_option('envira_lite_version');
delete_option('envira_lite_wizard');
delete_site_option('envira_lite_wizard');
delete_option('envira_version');
delete_site_option('envira_version');
delete_option('envira_over_time');
delete_site_option('envira_over_time');
delete_option('envira_debug');
delete_site_option('envira_debug');
delete_option('envira_pro_upgrade_header_dismissed');
delete_site_option('envira_pro_upgrade_header_dismissed');
delete_option('envira_gallery');
delete_site_option('envira_gallery');
delete_option('envira_gallery_116');
delete_site_option('envira_gallery_116');
delete_option('envira_gallery_121');
delete_site_option('envira_gallery_121');
delete_option('envira_tags_taxonomy_migrated');
delete_site_option('envira_tags_taxonomy_migrated');
delete_option('envira_gallery_shareasale_id');
delete_site_option('envira_gallery_shareasale_id');
delete_option('envira_admin_menu_tooltip');
delete_site_option('envira_admin_menu_tooltip');
delete_option('envira_gallery_notices');
delete_site_option('envira_gallery_notices');
delete_option('hide_am_notices');
delete_site_option('hide_am_notices');
delete_option('envira_onboarding_data');
delete_site_option('envira_onboarding_data');
delete_option('envira_permissions_default');
delete_site_option('envira_permissions_default');
delete_option('envira_gallery_review');
delete_site_option('envira_gallery_review');
delete_option('envira_permissions_set_default');
delete_site_option('envira_permissions_set_default');
delete_option('envira_usage_tracking_last_checkin');
delete_site_option('envira_usage_tracking_last_checkin');
delete_option('envira_usage_tracking_config');
delete_site_option('envira_usage_tracking_config');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient__eg_cache_%', '_site_transient__eg_cache_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('_eg_cache_all');
delete_site_transient('_eg_cache_all');
delete_transient('_envira_lite_activation_redirect');
delete_site_transient('_envira_lite_activation_redirect');
delete_transient('envira_lite_updated');
delete_site_transient('envira_lite_updated');
delete_transient('_eg_addons');
delete_site_transient('_eg_addons');

// Clear Cron Jobs
wp_clear_scheduled_hook('envira_admin_notifications_update');
wp_clear_scheduled_hook('envira_usage_tracking_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eg_gallery_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eg_gallery_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eg_gallery_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eg_gallery_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eg_gallery_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eg_gallery_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eg_gallery_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eg_gallery_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eg_has_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eg_has_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eg_has_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eg_has_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eg_in_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eg_in_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eg_in_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eg_in_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eg_gallery_old' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eg_gallery_old' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eg_gallery_old' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eg_gallery_old' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eg_gallery_old_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eg_gallery_old_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eg_gallery_old_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eg_gallery_old_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eg_in_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eg_in_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eg_in_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eg_in_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eg_just_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eg_just_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eg_just_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eg_just_published' ) );

