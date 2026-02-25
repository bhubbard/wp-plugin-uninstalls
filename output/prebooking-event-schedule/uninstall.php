<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prebooking_statuses');
delete_site_option('prebooking_statuses');
delete_option('prebooking_menu_title');
delete_site_option('prebooking_menu_title');
delete_option('prebooking_default_status');
delete_site_option('prebooking_default_status');
delete_option('prebooking_event_default_statuses');
delete_site_option('prebooking_event_default_statuses');
delete_option('prebooking_show_setup_notice');
delete_site_option('prebooking_show_setup_notice');
delete_option('prebooking_admin_email');
delete_site_option('prebooking_admin_email');
delete_option('prebooking_deepl_api_key');
delete_site_option('prebooking_deepl_api_key');
delete_option('prebooking_event_settings');
delete_site_option('prebooking_event_settings');
delete_option('prebooking_email_sender');
delete_site_option('prebooking_email_sender');
delete_option('prebooking_statuts');
delete_site_option('prebooking_statuts');
delete_option('prebooking_active_status_for_percentage');
delete_site_option('prebooking_active_status_for_percentage');
delete_option('email_admin');
delete_site_option('email_admin');
delete_option('prebooking_event_reminder_unit');
delete_site_option('prebooking_event_reminder_unit');
delete_option('prebooking_custom_css');
delete_site_option('prebooking_custom_css');
delete_option('prebooking_confirm_status');
delete_site_option('prebooking_confirm_status');
delete_option('prebooking_brevo_api_key');
delete_site_option('prebooking_brevo_api_key');
delete_option('prebooking_brevo_list_id');
delete_site_option('prebooking_brevo_list_id');
delete_option('prebooking_brevo_field_mapping');
delete_site_option('prebooking_brevo_field_mapping');
delete_option('general_bg_color');
delete_site_option('general_bg_color');
delete_option('general_text_color');
delete_site_option('general_text_color');
delete_option('general_button_color');
delete_site_option('general_button_color');
delete_option('prebooking_event_reminder');
delete_site_option('prebooking_event_reminder');
delete_option('prebooking_status_1');
delete_site_option('prebooking_status_1');
delete_option('prebooking_status_2');
delete_site_option('prebooking_status_2');
delete_option('prebooking_status_3');
delete_site_option('prebooking_status_3');
delete_option('prebooking_status_4');
delete_site_option('prebooking_status_4');
delete_option('prebooking_remote_generated_token');
delete_site_option('prebooking_remote_generated_token');
delete_option('prebooking_remote_endpoint');
delete_site_option('prebooking_remote_endpoint');
delete_option('prebooking_remote_token');
delete_site_option('prebooking_remote_token');
delete_option('prebooking_remote_last_result');
delete_site_option('prebooking_remote_last_result');
delete_option('prebooking_drop_legacy_reservation_personal_columns');
delete_site_option('prebooking_drop_legacy_reservation_personal_columns');
delete_option('prebooking_drop_reservation_email_column');
delete_site_option('prebooking_drop_reservation_email_column');
delete_option('prebooking_reservations_to_customers_migrated');
delete_site_option('prebooking_reservations_to_customers_migrated');
delete_option('prebooking_date_nullable_migrated');
delete_site_option('prebooking_date_nullable_migrated');
delete_option('prebooking_event_places_max_removed');
delete_site_option('prebooking_event_places_max_removed');
delete_option('prebooking_date_places_max_added');
delete_site_option('prebooking_date_places_max_added');
delete_option('prebooking_date_individual_added');
delete_site_option('prebooking_date_individual_added');
delete_option('prebooking_plugin_version');
delete_site_option('prebooking_plugin_version');
delete_option('prebooking_do_activation_redirect');
delete_site_option('prebooking_do_activation_redirect');
delete_option('email_sender');
delete_site_option('email_sender');

// Delete Transients
delete_transient('prebooking_status_notice');
delete_site_transient('prebooking_status_notice');
delete_transient('prebooking_settings_error');
delete_site_transient('prebooking_settings_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('prebooking_daily_event_reminder_hook');

