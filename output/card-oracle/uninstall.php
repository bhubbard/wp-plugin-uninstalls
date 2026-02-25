<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('card_oracle_settings');
delete_site_option('card_oracle_settings');
delete_option('card_oracle_demo_reading_id');
delete_site_option('card_oracle_demo_reading_id');
delete_option('card_oracle_reading_list');
delete_site_option('card_oracle_reading_list');
delete_option('card_oracle_mailchimp_api_key');
delete_site_option('card_oracle_mailchimp_api_key');
delete_option('card_oracle_integration');
delete_site_option('card_oracle_integration');
delete_option('card_oracle_payment_provider');
delete_site_option('card_oracle_payment_provider');
delete_option('card_oracle_activecampaign_api_key');
delete_site_option('card_oracle_activecampaign_api_key');
delete_option('card_oracle_activecampaign_url');
delete_site_option('card_oracle_activecampaign_url');
delete_option('card_oracle_thenewsletter_key');
delete_site_option('card_oracle_thenewsletter_key');
delete_option('card_oracle_thenewsletter_secret');
delete_site_option('card_oracle_thenewsletter_secret');
delete_option('co_wizard');
delete_site_option('co_wizard');
delete_option('card_oracle_powered_by');
delete_site_option('card_oracle_powered_by');
delete_option('card_oracle_allow_email');
delete_site_option('card_oracle_allow_email');
delete_option('card_oracle_from_email');
delete_site_option('card_oracle_from_email');
delete_option('card_oracle_from_email_name');
delete_site_option('card_oracle_from_email_name');
delete_option('card_oracle_stripe_sandbox');
delete_site_option('card_oracle_stripe_sandbox');
delete_option('card_oracle_affiliate_link');
delete_site_option('card_oracle_affiliate_link');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('card_oracle_version');
delete_site_option('card_oracle_version');
delete_option('card_oracle_email_text');
delete_site_option('card_oracle_email_text');
delete_option('card_oracle_subscribe');
delete_site_option('card_oracle_subscribe');
delete_option('card_oracle_email_consent_text');
delete_site_option('card_oracle_email_consent_text');
delete_option('card_oracle_paypal_button_text');
delete_site_option('card_oracle_paypal_button_text');
delete_option('card_oracle_payment_button_text');
delete_site_option('card_oracle_payment_button_text');
delete_option('card_oracle_paypal_currency');
delete_site_option('card_oracle_paypal_currency');
delete_option('card_oracle_payment_currency');
delete_site_option('card_oracle_payment_currency');
delete_option('card_oracle_mailchimp_send');
delete_site_option('card_oracle_mailchimp_send');
delete_option('card_oracle_mailchimp_daily');
delete_site_option('card_oracle_mailchimp_daily');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'card_oracle_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('card_oracle_multiple_positions');
delete_site_option('card_oracle_multiple_positions');
delete_option('card_oracle_email_success');
delete_site_option('card_oracle_email_success');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_card_oracle_reading_limit_notice_%', '_site_transient_card_oracle_reading_limit_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('card_oracle_system_status_wp_version_check');
delete_site_transient('card_oracle_system_status_wp_version_check');
delete_transient('card_oracle_orphaned_shortcodes');
delete_site_transient('card_oracle_orphaned_shortcodes');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('card-oracle_cron_refresh_cache');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'card_oracle_onboarding_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'card_oracle_onboarding_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'card_oracle_onboarding_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'card_oracle_onboarding_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'question_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'question_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'question_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'question_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'card_oracle_demo_package' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'card_oracle_demo_package' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'card_oracle_demo_package' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'card_oracle_demo_package' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_co_log_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_co_log_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_co_log_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_co_log_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'payment_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'payment_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'payment_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'payment_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'footer_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'footer_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'footer_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'footer_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'before_cards_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'before_cards_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'before_cards_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'before_cards_text' ) );

