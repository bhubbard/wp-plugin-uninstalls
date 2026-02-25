<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('optimizelycampaign_newsletter_options');
delete_site_option('optimizelycampaign_newsletter_options');
delete_option('optimizelycampaign_db_version');
delete_site_option('optimizelycampaign_db_version');
delete_option('optimizelycampaign_mail_options');
delete_site_option('optimizelycampaign_mail_options');
delete_option('optimizelycampaign_wpcore_options');
delete_site_option('optimizelycampaign_wpcore_options');
delete_option('optimizelycampaign_woocommerce_options');
delete_site_option('optimizelycampaign_woocommerce_options');
delete_option('optimizelycampaign_other_options');
delete_site_option('optimizelycampaign_other_options');

// Delete Transients
delete_transient('optimizelycampaign_smtp_error_log');
delete_site_transient('optimizelycampaign_smtp_error_log');
delete_transient('optimizelycampaign_subscription_message');
delete_site_transient('optimizelycampaign_subscription_message');

// Clear Cron Jobs
wp_clear_scheduled_hook('optimizelycampaign_error_queue_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'optimizelycampaign_newsletter_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'optimizelycampaign_newsletter_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'optimizelycampaign_newsletter_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'optimizelycampaign_newsletter_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'optimizelycampaign_subscription_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'optimizelycampaign_subscription_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'optimizelycampaign_subscription_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'optimizelycampaign_subscription_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'optimizelycampaign_previous_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'optimizelycampaign_previous_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'optimizelycampaign_previous_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'optimizelycampaign_previous_email' ) );

