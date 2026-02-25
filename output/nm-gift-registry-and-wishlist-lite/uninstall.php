<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nmgr_metabox_notices');
delete_site_option('nmgr_metabox_notices');
delete_option('nmgr_exclude_from_search');
delete_site_option('nmgr_exclude_from_search');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('nmgr_flush_rewrite_rules');
delete_site_option('nmgr_flush_rewrite_rules');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('nmgr_settings');
delete_site_option('nmgr_settings');
delete_option('nmgr_default_pro_fields_values');
delete_site_option('nmgr_default_pro_fields_values');
delete_option('nmgrlite_version');
delete_site_option('nmgrlite_version');
delete_option('nmgr_version');
delete_site_option('nmgr_version');
delete_option('nmgr_pagename');
delete_site_option('nmgr_pagename');
delete_option('nmgr_wishlist_pagename');
delete_site_option('nmgr_wishlist_pagename');
delete_option('nmgr_show_current_version_notices');
delete_site_option('nmgr_show_current_version_notices');
delete_option('nmgr_dismiss_removed_templates_notice');
delete_site_option('nmgr_dismiss_removed_templates_notice');
delete_option('nmgr_license');
delete_site_option('nmgr_license');
delete_option('nmgrcf_license');
delete_site_option('nmgrcf_license');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_task_running', '_site_transient_%_task_running' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('nmgr_licenses');
delete_site_transient('nmgr_licenses');
delete_transient('nmgr_setup_redirect');
delete_site_transient('nmgr_setup_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('nmgr_delete_guest_wishlists');
wp_clear_scheduled_hook('nmgr_set_expired_wishlists');
wp_clear_scheduled_hook('nmgr_gift-registry_SetExpiredWishlists');
wp_clear_scheduled_hook('nmgr_gift-registry_DeleteGuestWishlists');
wp_clear_scheduled_hook('nmgr_wishlist_DeleteGuestWishlists');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_nmgr_expired' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_nmgr_expired' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_nmgr_expired' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_nmgr_expired' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nmgr_wishlist_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nmgr_wishlist_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nmgr_wishlist_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nmgr_wishlist_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_nmgr_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_nmgr_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_nmgr_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_nmgr_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'trigger_created_wishlist_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'trigger_created_wishlist_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'trigger_created_wishlist_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'trigger_created_wishlist_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_nmgr_guest' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_nmgr_guest' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_nmgr_guest' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_nmgr_guest' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nmgr_enable_wishlist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nmgr_enable_wishlist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nmgr_enable_wishlist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nmgr_enable_wishlist' ) );

