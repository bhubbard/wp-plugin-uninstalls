<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ninja_forms_doing_required_updates');
delete_site_option('ninja_forms_doing_required_updates');
delete_option('ninja_forms_required_updates');
delete_site_option('ninja_forms_required_updates');
delete_option('ninja_forms_needs_updates');
delete_site_option('ninja_forms_needs_updates');
delete_option('ninja_forms_db_version');
delete_site_option('ninja_forms_db_version');
delete_option('ninja_forms_addons_feed');
delete_site_option('ninja_forms_addons_feed');
delete_option('nf_aff');
delete_site_option('nf_aff');
delete_option('ninja_forms_allow_tracking');
delete_site_option('ninja_forms_allow_tracking');
delete_option('ninja_forms_do_not_allow_tracking');
delete_site_option('ninja_forms_do_not_allow_tracking');
delete_option('nf_active_promotions');
delete_site_option('nf_active_promotions');
delete_option('nf_form_tel_sent');
delete_site_option('nf_form_tel_sent');
delete_option('ninja_forms_submissions_settings');
delete_site_option('ninja_forms_submissions_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('ninja_forms_settings');
delete_site_option('ninja_forms_settings');
delete_option('nf_admin_notice');
delete_site_option('nf_admin_notice');
delete_option('nf_sub_expiration');
delete_site_option('nf_sub_expiration');
delete_option('nf_expired_submissions');
delete_site_option('nf_expired_submissions');
delete_option('nf_import_form');
delete_site_option('nf_import_form');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nf_doing_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ninja_forms_disable_survey_promo');
delete_site_option('ninja_forms_disable_survey_promo');
delete_option('nf_form_tel_data');
delete_site_option('nf_form_tel_data');
delete_option('nf_tel_collate');
delete_site_option('nf_tel_collate');
delete_option('ninja_forms_load_deprecated');
delete_site_option('ninja_forms_load_deprecated');
delete_option('ninja_forms_mailchimp_interests');
delete_site_option('ninja_forms_mailchimp_interests');
delete_option('ninja_forms_oauth_client_secret');
delete_site_option('ninja_forms_oauth_client_secret');
delete_option('ninja_forms_optin_reported');
delete_site_option('ninja_forms_optin_reported');
delete_option('ninja_forms_transactional_email_enabled');
delete_site_option('ninja_forms_transactional_email_enabled');
delete_option('ninja_forms_version');
delete_site_option('ninja_forms_version');
delete_option('nf_upgrade_notice');
delete_site_option('nf_upgrade_notice');
delete_option('nf_converted_subs');
delete_site_option('nf_converted_subs');
delete_option('nf_converted_forms');
delete_site_option('nf_converted_forms');
delete_option('nf_convert_subs_num');
delete_site_option('nf_convert_subs_num');
delete_option('nf_convert_subs_step');
delete_site_option('nf_convert_subs_step');
delete_option('nf_email_fav_updated');
delete_site_option('nf_email_fav_updated');
delete_option('nf_database_migrations');
delete_site_option('nf_database_migrations');
delete_option('nf_converted_form_reset');
delete_site_option('nf_converted_form_reset');
delete_option('nf_version_upgraded_from');
delete_site_option('nf_version_upgraded_from');
delete_option('nf_convert_forms_complete');
delete_site_option('nf_convert_forms_complete');
delete_option('nf_convert_notifications_forms');
delete_site_option('nf_convert_notifications_forms');
delete_option('nf_convert_notifications_complete');
delete_site_option('nf_convert_notifications_complete');
delete_option('nf_update_email_settings_complete');
delete_site_option('nf_update_email_settings_complete');
delete_option('nf_be_data');
delete_site_option('nf_be_data');
delete_option('ninja_forms_zuul');
delete_site_option('ninja_forms_zuul');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nf_form_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ninja_forms_cache_mode');
delete_site_option('ninja_forms_cache_mode');
delete_option('_site_transient_update_plugins');
delete_site_option('_site_transient_update_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_wp_session_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_wp_session_expires_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ninja_forms_optin_email_recovered');
delete_site_option('ninja_forms_optin_email_recovered');
delete_option('ninja_forms_optin_email');
delete_site_option('ninja_forms_optin_email');
delete_option('ninja_forms_oauth_client_id');
delete_site_option('ninja_forms_oauth_client_id');

// Delete Transients
delete_transient('nf_bad_update_requirement');
delete_site_transient('nf_bad_update_requirement');
delete_transient('ninja_forms_disable_slim_promo');
delete_site_transient('ninja_forms_disable_slim_promo');
delete_transient('ninja_forms_disable_survey_promo');
delete_site_transient('ninja_forms_disable_survey_promo');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('nf_dismiss_php_version_whip');
delete_site_transient('nf_dismiss_php_version_whip');
delete_transient('ninja_forms_prevent_updates');
delete_site_transient('ninja_forms_prevent_updates');

// Clear Cron Jobs
wp_clear_scheduled_hook('ninja_forms_views_check_rotation');
wp_clear_scheduled_hook('ninja_forms_daily_action');
wp_clear_scheduled_hook('nf_submission_expiration_cron');
wp_clear_scheduled_hook('wp_session_garbage_collection');
wp_clear_scheduled_hook('nf_weekly_promotion_update');
wp_clear_scheduled_hook('nf_optin_cron');
wp_clear_scheduled_hook('nf_marketing_feed_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nf_onboarding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nf_onboarding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nf_onboarding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nf_onboarding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_nf_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_nf_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_nf_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_nf_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nf_anonymize_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nf_anonymize_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nf_anonymize_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nf_anonymize_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ninja_forms_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ninja_forms_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ninja_forms_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ninja_forms_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_field_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_field_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_field_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_field_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seq_num' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seq_num' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seq_num' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seq_num' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

