<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('before_list');
delete_site_option('before_list');
delete_option('after_list');
delete_site_option('after_list');
delete_option('before_items');
delete_site_option('before_items');
delete_option('after_items');
delete_site_option('after_items');
delete_option('num');
delete_site_option('num');
delete_option('api_key');
delete_site_option('api_key');
delete_option('country_shortcode');
delete_site_option('country_shortcode');
delete_option('update_interval');
delete_site_option('update_interval');
delete_option('delete_interval');
delete_site_option('delete_interval');
delete_option('auto_insert_post');
delete_site_option('auto_insert_post');
delete_option('auto_insert_page');
delete_site_option('auto_insert_page');
delete_option('auto_insert_firma');
delete_site_option('auto_insert_firma');
delete_option('auto_tag_insert');
delete_site_option('auto_tag_insert');
delete_option('custom_field_name');
delete_site_option('custom_field_name');

// Clear Cron Jobs
wp_clear_scheduled_hook('wake_up_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'key_words' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'key_words' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'key_words' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'key_words' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ecpt_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ecpt_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ecpt_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ecpt_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'key_words_date_use' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'key_words_date_use' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'key_words_date_use' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'key_words_date_use' ) );

