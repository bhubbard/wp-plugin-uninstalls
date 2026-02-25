<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yespo_options');
delete_site_option('yespo_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_db_sync_enabled');
delete_site_option('woocommerce_db_sync_enabled');
delete_option('yespo-version');
delete_site_option('yespo-version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_promo_hide' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('yespo_user_event_triggered');
delete_site_transient('yespo_user_event_triggered');
delete_transient('yespo_add_to_cart_event_triggered');
delete_site_transient('yespo_add_to_cart_event_triggered');
delete_transient('yespo_update_cart_event_triggered');
delete_site_transient('yespo_update_cart_event_triggered');

// Clear Cron Jobs
wp_clear_scheduled_hook('yespo_export_data_cron');
wp_clear_scheduled_hook('yespo_script_cron_event');
wp_clear_scheduled_hook('yespo_remove_old_logs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'locale' ) );

