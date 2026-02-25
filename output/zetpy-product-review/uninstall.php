<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zetpy_product_review_settings');
delete_site_option('zetpy_product_review_settings');
delete_option('zetpy_product_review_db_version');
delete_site_option('zetpy_product_review_db_version');
delete_option('zetpy_product_review_activated_at');
delete_site_option('zetpy_product_review_activated_at');
delete_option('zetpy_product_review_version');
delete_site_option('zetpy_product_review_version');
delete_option('zetpy_product_review_show_update_notice');
delete_site_option('zetpy_product_review_show_update_notice');
delete_option('zetpy_product_review_update_notice_dismissed');
delete_site_option('zetpy_product_review_update_notice_dismissed');
delete_option('zetpy_rewrite_rules_flushed');
delete_site_option('zetpy_rewrite_rules_flushed');
delete_option('zetpy_rewrite_rules_version');
delete_site_option('zetpy_rewrite_rules_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_zetpy_product_reviews_%', '_site_transient_zetpy_product_reviews_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_zetpy_featured_reviews_%', '_site_transient_zetpy_featured_reviews_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('zetpy_send_review_email');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zetpy_helpful_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zetpy_helpful_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zetpy_helpful_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zetpy_helpful_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_zetpy_review_stats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_zetpy_review_stats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_zetpy_review_stats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_zetpy_review_stats' ) );

