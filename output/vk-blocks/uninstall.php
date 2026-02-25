<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vk_blocks_options');
delete_site_option('vk_blocks_options');
delete_option('vk_blocks_checked_flags');
delete_site_option('vk_blocks_checked_flags');
delete_option('vk_blocks_balloon_meta');
delete_site_option('vk_blocks_balloon_meta');
delete_option('vk_font_awesome_options');
delete_site_option('vk_font_awesome_options');
delete_option('vk_blocks_load_bootstrap');
delete_site_option('vk_blocks_load_bootstrap');
delete_option('recently_activated');
delete_site_option('recently_activated');
delete_option('vk_font_awesome_version');
delete_site_option('vk_font_awesome_version');
delete_option('lightning_theme_options');
delete_site_option('lightning_theme_options');
delete_option('vk_color_manager_options');
delete_site_option('vk_color_manager_options');
delete_option('katawara_theme_options');
delete_site_option('katawara_theme_options');
delete_option('vk_css_optimize_options');
delete_site_option('vk_css_optimize_options');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('vkExUnit_common_options');
delete_site_option('vkExUnit_common_options');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vkblocks_dismissed_notice_pro' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vkblocks_dismissed_notice_pro' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vkblocks_dismissed_notice_pro' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vkblocks_dismissed_notice_pro' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'term_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'term_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'term_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'term_color' ) );

