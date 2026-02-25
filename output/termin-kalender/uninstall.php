<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('termin_kalender_kategorien');
delete_site_option('termin_kalender_kategorien');
delete_option('termin_kalender_events');
delete_site_option('termin_kalender_events');
delete_option('termin_kalender_options');
delete_site_option('termin_kalender_options');
delete_option('termin_kalender_todo_list_tasks');
delete_site_option('termin_kalender_todo_list_tasks');
delete_option('termin_kalender_list_templates');
delete_site_option('termin_kalender_list_templates');
delete_option('termin_kalender_dashicons');
delete_site_option('termin_kalender_dashicons');
delete_option('ter_kal_checkbox_values');
delete_site_option('ter_kal_checkbox_values');
delete_option('ter_kal_timed_event_duration');
delete_site_option('ter_kal_timed_event_duration');
delete_option('ter_kal_termin_basisfelder');
delete_site_option('ter_kal_termin_basisfelder');
delete_option('ter_kal_dashicon_list');
delete_site_option('ter_kal_dashicon_list');
delete_option('ter_kal_dashicons');
delete_site_option('ter_kal_dashicons');
delete_option('ter_kal_lang');
delete_site_option('ter_kal_lang');
delete_option('ter_kal_selected_lable');
delete_site_option('ter_kal_selected_lable');
delete_option('termin_kalender_version');
delete_site_option('termin_kalender_version');
delete_option('termin_kalender_first_run');
delete_site_option('termin_kalender_first_run');
delete_option('ter_kal_formularfelder');
delete_site_option('ter_kal_formularfelder');
delete_option('ter_kal_kategorie');
delete_site_option('ter_kal_kategorie');
delete_option('ter_kal_kalender_daten');
delete_site_option('ter_kal_kalender_daten');
delete_option('ter_kal_termin_zusatzfelder');
delete_site_option('ter_kal_termin_zusatzfelder');
delete_option('ter_kal_kategorien');
delete_site_option('ter_kal_kategorien');
delete_option('ter_kal_kalender_daten_backup');
delete_site_option('ter_kal_kalender_daten_backup');

// Clear Cron Jobs
wp_clear_scheduled_hook('ter_kal_cleanup_old_event_pages');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ter_kal_start' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ter_kal_start' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ter_kal_start' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ter_kal_start' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ter_kal_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ter_kal_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ter_kal_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ter_kal_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ter_kal_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ter_kal_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ter_kal_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ter_kal_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ter_kal_all_day' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ter_kal_all_day' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ter_kal_all_day' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ter_kal_all_day' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ter_kal_freq' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ter_kal_freq' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ter_kal_freq' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ter_kal_freq' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ter_kal_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ter_kal_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ter_kal_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ter_kal_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ter_kal_bg_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ter_kal_bg_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ter_kal_bg_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ter_kal_bg_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ter_kal_text_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ter_kal_text_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ter_kal_text_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ter_kal_text_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ter_kal_icon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ter_kal_icon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ter_kal_icon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ter_kal_icon' ) );

