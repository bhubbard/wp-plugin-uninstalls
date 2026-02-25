<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcd_tables_created');
delete_site_option('wpcd_tables_created');
delete_option('wpcd_category_discount_version');
delete_site_option('wpcd_category_discount_version');
delete_option('wpcd_process_method');
delete_site_option('wpcd_process_method');
delete_option('wpcd_migration_complete');
delete_site_option('wpcd_migration_complete');
delete_option('wpcd_category_discount');
delete_site_option('wpcd_category_discount');
delete_option('wpcd_attr_discount');
delete_site_option('wpcd_attr_discount');
delete_option('wpcd_brand_discount');
delete_site_option('wpcd_brand_discount');
delete_option('wpcd_tag_discount');
delete_site_option('wpcd_tag_discount');
delete_option('cron');
delete_site_option('cron');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpcd_apply_discount_setup');
wp_clear_scheduled_hook('wpcd_remove_discount_setup');
wp_clear_scheduled_hook('wpcd_apply_discount');
wp_clear_scheduled_hook('wpcd_remove_discount');
wp_clear_scheduled_hook('wpcd_discount_legacy_migrate');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpcd_discount_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpcd_discount_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpcd_discount_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpcd_discount_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpcd_original_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpcd_original_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpcd_original_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpcd_original_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpcd_original_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpcd_original_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpcd_original_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpcd_original_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpcd_original_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpcd_original_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpcd_original_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpcd_original_price' ) );

