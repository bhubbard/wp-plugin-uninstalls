<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('restrictmate_do_activation_redirect');
delete_site_option('restrictmate_do_activation_redirect');
delete_option('restrictmate_installed');
delete_site_option('restrictmate_installed');
delete_option('restrictmate_version');
delete_site_option('restrictmate_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'restrictmate_page_id_for_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('restrictmate_restricted_content_message');
delete_site_option('restrictmate_restricted_content_message');
delete_option('restrictmate_content_excerpt');
delete_site_option('restrictmate_content_excerpt');
delete_option('restrictmate_currency');
delete_site_option('restrictmate_currency');
delete_option('restrictmate_gateway_manual_payment');
delete_site_option('restrictmate_gateway_manual_payment');
delete_option('restrictmate_gateway_manual_payment_title');
delete_site_option('restrictmate_gateway_manual_payment_title');
delete_option('restrictmate_gateway_manual_payment_description');
delete_site_option('restrictmate_gateway_manual_payment_description');
delete_option('restrictmate_gateway_manual_payment_account_details');
delete_site_option('restrictmate_gateway_manual_payment_account_details');
delete_option('restrictmate_email_from_name');
delete_site_option('restrictmate_email_from_name');
delete_option('restrictmate_email_from_email');
delete_site_option('restrictmate_email_from_email');
delete_option('restrictmate_email_format');
delete_site_option('restrictmate_email_format');
delete_option('restrictmate_invoice_heading');
delete_site_option('restrictmate_invoice_heading');
delete_option('restrictmate_invoice_company_name');
delete_site_option('restrictmate_invoice_company_name');
delete_option('restrictmate_invoice_address_line_1');
delete_site_option('restrictmate_invoice_address_line_1');
delete_option('restrictmate_invoice_address_line_2');
delete_site_option('restrictmate_invoice_address_line_2');
delete_option('restrictmate_invoice_email');
delete_site_option('restrictmate_invoice_email');
delete_option('restrictmate_invoice_footer_text');
delete_site_option('restrictmate_invoice_footer_text');
delete_option('restrictmate_latest_version');
delete_site_option('restrictmate_latest_version');
delete_option('restrictmate_gateway_stripe_payment_description');
delete_site_option('restrictmate_gateway_stripe_payment_description');
delete_option('restrictmate_invoice_restrictmate-invoice-footer_text');
delete_site_option('restrictmate_invoice_restrictmate-invoice-footer_text');
delete_option('restrictmate_gateway_stripe');
delete_site_option('restrictmate_gateway_stripe');
delete_option('restrictmate_gateway_stripe_test_mode');
delete_site_option('restrictmate_gateway_stripe_test_mode');
delete_option('restrictmate_gateway_stripe_test_secret_key');
delete_site_option('restrictmate_gateway_stripe_test_secret_key');
delete_option('restrictmate_gateway_stripe_live_secret_key');
delete_site_option('restrictmate_gateway_stripe_live_secret_key');
delete_option('restrictmate_page_id_for_thankyou');
delete_site_option('restrictmate_page_id_for_thankyou');
delete_option('restrictmate_page_id_for_register');
delete_site_option('restrictmate_page_id_for_register');
delete_option('restrictmate_page_id_for_account');
delete_site_option('restrictmate_page_id_for_account');
delete_option('restrictmate_gateway_stripe_payment_title');
delete_site_option('restrictmate_gateway_stripe_payment_title');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_restrictmate_meta_plain_text_email_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_restrictmate_meta_plain_text_email_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_restrictmate_meta_plain_text_email_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_restrictmate_meta_plain_text_email_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_restrictmate_meta_is_admin_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_restrictmate_meta_is_admin_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_restrictmate_meta_is_admin_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_restrictmate_meta_is_admin_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'restrictmate_user_subscriptions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'restrictmate_user_subscriptions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'restrictmate_user_subscriptions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'restrictmate_user_subscriptions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_restrictmate_meta_membership_levels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_restrictmate_meta_membership_levels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_restrictmate_meta_membership_levels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_restrictmate_meta_membership_levels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'restrictmate_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'restrictmate_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'restrictmate_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'restrictmate_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%membership_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%membership_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%membership_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%membership_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%subscription_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%subscription_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%subscription_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%subscription_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%membership_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%membership_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%membership_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%membership_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

