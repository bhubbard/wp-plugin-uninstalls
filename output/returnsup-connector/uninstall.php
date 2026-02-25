<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('returnsup_needs_webhook_setup');
delete_site_option('returnsup_needs_webhook_setup');
delete_option('returnsup_webhook_ids');
delete_site_option('returnsup_webhook_ids');
delete_option('returnsup_webhook_id');
delete_site_option('returnsup_webhook_id');
delete_option('returnsup_enable_account_menu');
delete_site_option('returnsup_enable_account_menu');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('returnsup_connection_key');
delete_site_option('returnsup_connection_key');
delete_option('returnsup_connection_secret');
delete_site_option('returnsup_connection_secret');
delete_option('returnsup_consumer_secret');
delete_site_option('returnsup_consumer_secret');
delete_option('wooreturns_setup_step');
delete_site_option('wooreturns_setup_step');
delete_option('wooreturns_consumer_key');
delete_site_option('wooreturns_consumer_key');
delete_option('wooreturns_api_error');
delete_site_option('wooreturns_api_error');
delete_option('wooreturns_request_data');
delete_site_option('wooreturns_request_data');
delete_option('wooreturns_request_timestamp');
delete_site_option('wooreturns_request_timestamp');
delete_option('wooreturns_request_id');
delete_site_option('wooreturns_request_id');
delete_option('woocommerce_wooreturns_free_exchange_settings');
delete_site_option('woocommerce_wooreturns_free_exchange_settings');
delete_option('wooreturns_connection_key');
delete_site_option('wooreturns_connection_key');
delete_option('returnsup_key_migrated');
delete_site_option('returnsup_key_migrated');

// Clear Cron Jobs
wp_clear_scheduled_hook('returnsupc_create_webhook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_returnsup_refund_in_progress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_returnsup_refund_in_progress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_returnsup_refund_in_progress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_returnsup_refund_in_progress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_returnsup_credit_note_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_returnsup_credit_note_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_returnsup_credit_note_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_returnsup_credit_note_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_returnsup_credit_note_generated_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_returnsup_credit_note_generated_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_returnsup_credit_note_generated_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_returnsup_credit_note_generated_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_returnsup_unified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_returnsup_unified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_returnsup_unified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_returnsup_unified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_returnsup_return_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_returnsup_return_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_returnsup_return_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_returnsup_return_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wooreturns_lang' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wooreturns_lang' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wooreturns_lang' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wooreturns_lang' ) );

