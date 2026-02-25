<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gtmkit_version');
delete_site_option('gtmkit_version');
delete_option('gtmkit_activation_prevent_redirect');
delete_site_option('gtmkit_activation_prevent_redirect');
delete_option('gtmkit_initial_version');
delete_site_option('gtmkit_initial_version');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('gtm_ecommerce_woo_gtm_snippet_head');
delete_site_option('gtm_ecommerce_woo_gtm_snippet_head');
delete_option('edd_settings');
delete_site_option('edd_settings');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('gtmkit');
delete_site_option('gtmkit');

// Delete Transients
delete_transient('gtmkit_activation_redirect');
delete_site_transient('gtmkit_activation_redirect');
delete_transient('gtmkit_templates');
delete_site_transient('gtmkit_templates');

// Clear Cron Jobs
wp_clear_scheduled_hook('gtmkit_send_anonymous_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gtmkit_page_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gtmkit_page_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gtmkit_page_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gtmkit_page_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'rank_math_primary_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'rank_math_primary_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'rank_math_primary_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'rank_math_primary_%' ) );

