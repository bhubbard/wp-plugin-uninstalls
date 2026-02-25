<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('goods_catalog_yml_field1');
delete_site_option('goods_catalog_yml_field1');
delete_option('gcYmlCours');
delete_site_option('gcYmlCours');
delete_option('gcYmlCPA');
delete_site_option('gcYmlCPA');
delete_option('gcYmlCron');
delete_site_option('gcYmlCron');

// Clear Cron Jobs
wp_clear_scheduled_hook('yml_goods_catalog_refresh');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gc_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gc_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gc_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gc_price' ) );

