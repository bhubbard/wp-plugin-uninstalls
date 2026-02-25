<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('getbowtied_theme_license_subscription_expired_dismissed');
delete_site_option('getbowtied_theme_license_subscription_expired_dismissed');
delete_option('getbowtied_theme_license_subscription_expiring_soon_dismissed');
delete_site_option('getbowtied_theme_license_subscription_expiring_soon_dismissed');
delete_option('auto_update_themes');
delete_site_option('auto_update_themes');
delete_option('gbt_theme_updated_redirect');
delete_site_option('gbt_theme_updated_redirect');
delete_option('social_media_options_import');
delete_site_option('social_media_options_import');
delete_option('social_media_repeater_option_import');
delete_site_option('social_media_repeater_option_import');
delete_option('sk_footer_social_icons');
delete_site_option('sk_footer_social_icons');
delete_option('sk_top_bar_social_icons');
delete_site_option('sk_top_bar_social_icons');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sk_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sk_social_media_repeater');
delete_site_option('sk_social_media_repeater');
delete_option('sk_social_sharing_options_import');
delete_site_option('sk_social_sharing_options_import');
delete_option('sk_sharing_options');
delete_site_option('sk_sharing_options');
delete_option('sk_sharing_options_facebook');
delete_site_option('sk_sharing_options_facebook');
delete_option('sk_sharing_options_facebook_meta');
delete_site_option('sk_sharing_options_facebook_meta');
delete_option('sk_sharing_options_twitter');
delete_site_option('sk_sharing_options_twitter');
delete_option('sk_sharing_options_pinterest');
delete_site_option('sk_sharing_options_pinterest');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gbt_dashboard_notification_%', '_site_transient_gbt_dashboard_notification_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('gbt_license_result');
delete_site_transient('gbt_license_result');
delete_transient('elementor_activation_redirect');
delete_site_transient('elementor_activation_redirect');
delete_transient('wc_term_counts');
delete_site_transient('wc_term_counts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'getbowtied-welcome-pointer-dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'getbowtied-welcome-pointer-dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'getbowtied-welcome-pointer-dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'getbowtied-welcome-pointer-dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'display_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'display_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'display_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'display_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'header_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'header_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'header_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'header_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_background_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_background_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_background_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_background_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_megamenu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_megamenu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_megamenu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_megamenu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );

