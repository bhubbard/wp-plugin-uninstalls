<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('ambisn_table_items_per_page');
delete_site_option('ambisn_table_items_per_page');
delete_option('ambisn_table_emails_per_page');
delete_site_option('ambisn_table_emails_per_page');
delete_option('ambisn_feedback_popup');
delete_site_option('ambisn_feedback_popup');
delete_option('ambisn_lang_fixed_products');
delete_site_option('ambisn_lang_fixed_products');
delete_option('ambisn_plugin_data');
delete_site_option('ambisn_plugin_data');
delete_option('ambisn_migration_product_ids');
delete_site_option('ambisn_migration_product_ids');
delete_option('ambisn_migration_offset');
delete_site_option('ambisn_migration_offset');
delete_option('wc_admail_subscriptions_migration_status');
delete_site_option('wc_admail_subscriptions_migration_status');

// Delete Transients
delete_transient('ambisn_migration_notice');
delete_site_transient('ambisn_migration_notice');
delete_transient('wc_admail_processed_count');
delete_site_transient('wc_admail_processed_count');
delete_transient('wc_admail_subscriptions_progress');
delete_site_transient('wc_admail_subscriptions_progress');

// Clear Cron Jobs
wp_clear_scheduled_hook('ambisn_subscription_migration_event');
wp_clear_scheduled_hook('ambisn_migrate_subscriptions_end_event');
wp_clear_scheduled_hook('ambisn_migration_get_product_ids_task');
wp_clear_scheduled_hook('ambisn_migrate_subscriptions_task');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_admail_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_admail_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_admail_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_admail_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_admail_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_admail_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_admail_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_admail_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_admail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_admail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_admail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_admail' ) );

