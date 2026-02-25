<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pl_dismiss_upgrade_header');
delete_site_option('pl_dismiss_upgrade_header');
delete_option('prli_about_notice_version');
delete_site_option('prli_about_notice_version');
delete_option('prli_authenticator_site_uuid');
delete_site_option('prli_authenticator_site_uuid');
delete_option('prli_authenticator_account_email');
delete_site_option('prli_authenticator_account_email');
delete_option('prli_authenticator_secret_token');
delete_site_option('prli_authenticator_secret_token');
delete_option('prli_authenticator_user_uuid');
delete_site_option('prli_authenticator_user_uuid');
delete_option('prli_auto_trim_clicks_last_run');
delete_site_option('prli_auto_trim_clicks_last_run');
delete_option('pretty_links_installed_monsterinsights');
delete_site_option('pretty_links_installed_monsterinsights');
delete_option('prli_onboarding_complete');
delete_site_option('prli_onboarding_complete');
delete_option('prli_onboarded');
delete_site_option('prli_onboarded');
delete_option('prli_disable_all_popups');
delete_site_option('prli_disable_all_popups');
delete_option('prli-popup-last-viewed');
delete_site_option('prli-popup-last-viewed');
delete_option('pl_review_prompt_removed');
delete_site_option('pl_review_prompt_removed');
delete_option('pl_review_prompt_delay');
delete_site_option('pl_review_prompt_delay');
delete_option('prli_old_site_url');
delete_site_option('prli_old_site_url');
delete_option('prli_stripe_status');
delete_site_option('prli_stripe_status');
delete_option('prli_stripe_test_secret_key');
delete_site_option('prli_stripe_test_secret_key');
delete_option('prli_stripe_test_publishable_key');
delete_site_option('prli_stripe_test_publishable_key');
delete_option('prli_stripe_live_secret_key');
delete_site_option('prli_stripe_live_secret_key');
delete_option('prli_stripe_live_publishable_key');
delete_site_option('prli_stripe_live_publishable_key');
delete_option('prli_stripe_connect_status');
delete_site_option('prli_stripe_connect_status');
delete_option('prli_stripe_service_account_id');
delete_site_option('prli_stripe_service_account_id');
delete_option('prli_stripe_service_account_name');
delete_site_option('prli_stripe_service_account_name');
delete_option('prli_dismiss_notice_prli_prettypay_stripe');
delete_site_option('prli_dismiss_notice_prli_prettypay_stripe');
delete_option('prli_a99_f33_9c7_version');
delete_site_option('prli_a99_f33_9c7_version');
delete_option('prli_stripe_customer_portal');
delete_site_option('prli_stripe_customer_portal');
delete_option('prli_has_recurring_prettypay_link');
delete_site_option('prli_has_recurring_prettypay_link');
delete_option('prli_customer_portal_notice_dismissed');
delete_site_option('prli_customer_portal_notice_dismissed');
delete_option('plp_edge_updates');
delete_site_option('plp_edge_updates');
delete_option('plp_mothership_license');
delete_site_option('plp_mothership_license');
delete_option('prli_activated');
delete_site_option('prli_activated');
delete_option('prlipro-credentials');
delete_site_option('prlipro-credentials');
delete_option('prlipro_activated');
delete_site_option('prlipro_activated');
delete_option('prli_activation_override');
delete_site_option('prli_activation_override');
delete_option('enable_xmlrpc');
delete_site_option('enable_xmlrpc');
delete_option('prli_onboarding_steps_completed');
delete_site_option('prli_onboarding_steps_completed');
delete_option('prli_onboarding_features');
delete_site_option('prli_onboarding_features');
delete_option('prli_onboarding_link_id');
delete_site_option('prli_onboarding_link_id');
delete_option('prli_onboarding_has_imported_links');
delete_site_option('prli_onboarding_has_imported_links');
delete_option('prli_onboarding_content_steps_skipped');
delete_site_option('prli_onboarding_content_steps_skipped');
delete_option('prli_onboarding_category_id');
delete_site_option('prli_onboarding_category_id');
delete_option('prli_hide_announcements');
delete_site_option('prli_hide_announcements');
delete_option('prli_force_ugly_gateway_notify_urls');
delete_site_option('prli_force_ugly_gateway_notify_urls');
delete_option('prli_db_version');
delete_site_option('prli_db_version');
delete_option('auth_salt');
delete_site_option('auth_salt');
delete_option('prli_options');
delete_site_option('prli_options');
delete_option('prlipro_username');
delete_site_option('prlipro_username');
delete_option('prlipro_password');
delete_site_option('prlipro_password');
delete_option('prlipro_prettybar_active');
delete_site_option('prlipro_prettybar_active');
delete_option('prli_just_activated');
delete_site_option('prli_just_activated');

// Delete Transients
delete_transient('prli_installing');
delete_site_transient('prli_installing');
delete_transient('prli_dismiss_notice_fee_3');
delete_site_transient('prli_dismiss_notice_fee_3');
delete_transient('prli_cleanup_visitor_locks');
delete_site_transient('prli_cleanup_visitor_locks');
delete_transient('prli_license_info');
delete_site_transient('prli_license_info');
delete_transient('prli_dismiss_notice_continue_onboarding');
delete_site_transient('prli_dismiss_notice_continue_onboarding');
delete_transient('pl_review_prompt_delay');
delete_site_transient('pl_review_prompt_delay');
delete_transient('prli_a99_f33_9c7');
delete_site_transient('prli_a99_f33_9c7');
delete_transient('prli_stripe_customer_portal_error');
delete_site_transient('prli_stripe_customer_portal_error');
delete_transient('prli_update_info');
delete_site_transient('prli_update_info');
delete_transient('prli_addons');
delete_site_transient('prli_addons');
delete_transient('prli_all_addons');
delete_site_transient('prli_all_addons');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_prli_update_info_%', '_site_transient_prli_update_info_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('_prli_messages');
delete_site_transient('_prli_messages');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%-mosh-products', '_site_transient_%-mosh-products' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%-mosh-addons-update-check', '_site_transient_%-mosh-addons-update-check' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('caseproof_growth_tools_configuration_data_v2');
delete_site_transient('caseproof_growth_tools_configuration_data_v2');

// Clear Cron Jobs
wp_clear_scheduled_hook('prli_cleanup_visitor_locks_worker');

