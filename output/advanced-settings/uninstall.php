<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advset_guide_shown');
delete_site_option('advset_guide_shown');
delete_option('advset_version');
delete_site_option('advset_version');
delete_option('advset_version__first_install');
delete_site_option('advset_version__first_install');
delete_option('advanced_settings_settings');
delete_site_option('advanced_settings_settings');
delete_option('advset_remove_filters');
delete_site_option('advset_remove_filters');
delete_option('advset_advset');
delete_site_option('advset_advset');
delete_option('advset_code');
delete_site_option('advset_code');
delete_option('advset_system');
delete_site_option('advset_system');
delete_option('advset_scripts');
delete_site_option('advset_scripts');
delete_option('advset_styles');
delete_site_option('advset_styles');
delete_option('advset_post_types');
delete_site_option('advset_post_types');
delete_option('advset_tracked_scripts');
delete_site_option('advset_tracked_scripts');
delete_option('advset_notice');
delete_site_option('advset_notice');
delete_option('advset_tracked_styles');
delete_site_option('advset_tracked_styles');
delete_option('advset_tracksettings_asklater');
delete_site_option('advset_tracksettings_asklater');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('powerconfigs');
delete_site_option('powerconfigs');
delete_option('adv_post_types');
delete_site_option('adv_post_types');
delete_option('advset_tracksettings_choice');
delete_site_option('advset_tracksettings_choice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'skip_post_thumb' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'skip_post_thumb' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'skip_post_thumb' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'skip_post_thumb' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

