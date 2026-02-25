<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woocommerce_attribute_lookup_enabled');
delete_site_option('woocommerce_attribute_lookup_enabled');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('wcapf_v4_migration_notice_status');
delete_site_option('wcapf_v4_migration_notice_status');
delete_option('wcapf_v4_review_filters_notice_status');
delete_site_option('wcapf_v4_review_filters_notice_status');
delete_option('wcapf_migrated_filters_form_id');
delete_site_option('wcapf_migrated_filters_form_id');
delete_option('wcapf_activation_time');
delete_site_option('wcapf_activation_time');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('wcapf_run_migrate');
delete_site_option('wcapf_run_migrate');
delete_option('wcapf_set_default_settings');
delete_site_option('wcapf_set_default_settings');
delete_option('wcapf_update_default_settings');
delete_site_option('wcapf_update_default_settings');
delete_option('wcapf_filter_keys_order');
delete_site_option('wcapf_filter_keys_order');
delete_option('wcapf_db_version');
delete_site_option('wcapf_db_version');

// Delete Transients
delete_transient('wcapf_forms_with_locations');
delete_site_transient('wcapf_forms_with_locations');
delete_transient('wcapf_v4_migration_status');
delete_site_transient('wcapf_v4_migration_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wcapf_review_notice_for_milestone_achieved_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wcapf_review_notice_for_milestone_achieved_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wcapf_review_notice_for_milestone_achieved_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wcapf_review_notice_for_milestone_achieved_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wcapf_review_notice_for_milestone_achieved_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wcapf_review_notice_for_milestone_achieved_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wcapf_review_notice_for_milestone_achieved_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wcapf_review_notice_for_milestone_achieved_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wcapf_review_notice_time_since_hide_permanently' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wcapf_review_notice_time_since_hide_permanently' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wcapf_review_notice_time_since_hide_permanently' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wcapf_review_notice_time_since_hide_permanently' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wcapf_review_notice_time_since_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wcapf_review_notice_time_since_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wcapf_review_notice_time_since_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wcapf_review_notice_time_since_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wcapf_form_updates_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wcapf_form_updates_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wcapf_form_updates_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wcapf_form_updates_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_field_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_field_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_field_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_field_data' ) );

