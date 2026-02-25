<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpcmdr_per_page');
delete_site_option('bpcmdr_per_page');
delete_option('bpcmdr_visible_columns');
delete_site_option('bpcmdr_visible_columns');
delete_option('bpcmdr_meta_fields');
delete_site_option('bpcmdr_meta_fields');
delete_option('wbpcmdr_meta_fields');
delete_site_option('wbpcmdr_meta_fields');
delete_option('wbpcmdr_visible_columns');
delete_site_option('wbpcmdr_visible_columns');
delete_option('wbpcmdr_per_page');
delete_site_option('wbpcmdr_per_page');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bpcmdr_visible_columns' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bpcmdr_visible_columns' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bpcmdr_visible_columns' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bpcmdr_visible_columns' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wbpcmdr_visible_columns' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wbpcmdr_visible_columns' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wbpcmdr_visible_columns' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wbpcmdr_visible_columns' ) );

