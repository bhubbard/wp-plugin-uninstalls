<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_edw_position');
delete_site_option('_edw_position');
delete_option('_edw_cache');
delete_site_option('_edw_cache');
delete_option('_edw_fontawesome');
delete_site_option('_edw_fontawesome');
delete_option('edw_show_list');
delete_site_option('edw_show_list');
delete_option('edw_save_date_order');
delete_site_option('edw_save_date_order');
delete_option('_edw_holidays_dates');
delete_site_option('_edw_holidays_dates');
delete_option('_edw_mode');
delete_site_option('_edw_mode');
delete_option('_edw_max_days_outstock');
delete_site_option('_edw_max_days_outstock');
delete_option('_edw_days_outstock');
delete_site_option('_edw_days_outstock');
delete_option('_edw_disabled_days');
delete_site_option('_edw_disabled_days');
delete_option('_edw_max_days_backorders');
delete_site_option('_edw_max_days_backorders');
delete_option('_edw_days_backorders');
delete_site_option('_edw_days_backorders');
delete_option('_edw_days');
delete_site_option('_edw_days');
delete_option('_edw_max_days');
delete_site_option('_edw_max_days');
delete_option('_edw_same_day');
delete_site_option('_edw_same_day');
delete_option('_edw_max_hour');
delete_site_option('_edw_max_hour');
delete_option('_edw_relative_dates');
delete_site_option('_edw_relative_dates');
delete_option('_edw_date_format_1_0');
delete_site_option('_edw_date_format_1_0');
delete_option('_edw_date_format_1_1');
delete_site_option('_edw_date_format_1_1');
delete_option('_edw_date_format_2_0');
delete_site_option('_edw_date_format_2_0');
delete_option('_edw_date_format_2_1');
delete_site_option('_edw_date_format_2_1');
delete_option('_edw_date_format_3_0');
delete_site_option('_edw_date_format_3_0');
delete_option('_edw_date_format_3_1');
delete_site_option('_edw_date_format_3_1');
delete_option('_edw_icon');
delete_site_option('_edw_icon');
delete_option('estimated-delivery-newsletter');
delete_site_option('estimated-delivery-newsletter');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_edw_disabled_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_edw_disabled_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_edw_disabled_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_edw_disabled_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_edw_max_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_edw_max_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_edw_max_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_edw_max_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_edw_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_edw_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_edw_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_edw_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_edw_days_outstock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_edw_days_outstock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_edw_days_outstock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_edw_days_outstock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_edw_max_days_outstock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_edw_max_days_outstock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_edw_max_days_outstock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_edw_max_days_outstock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_edw_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_edw_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_edw_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_edw_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_edw_days_backorders' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_edw_days_backorders' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_edw_days_backorders' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_edw_days_backorders' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_edw_max_days_backorders' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_edw_max_days_backorders' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_edw_max_days_backorders' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_edw_max_days_backorders' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_edw_overwrite' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_edw_overwrite' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_edw_overwrite' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_edw_overwrite' ) );

