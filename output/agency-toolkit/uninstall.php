<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inspry_toolkit_backend_footer_agency_url');
delete_site_option('inspry_toolkit_backend_footer_agency_url');
delete_option('inspry_toolkit_backend_footer_agency_name');
delete_site_option('inspry_toolkit_backend_footer_agency_name');
delete_option('inspry_toolkit_backend_footer_agency_email');
delete_site_option('inspry_toolkit_backend_footer_agency_email');
delete_option('inspry_toolkit_backend_logo_image');
delete_site_option('inspry_toolkit_backend_logo_image');
delete_option('inspry_toolkit_change_email_sender_address');
delete_site_option('inspry_toolkit_change_email_sender_address');
delete_option('inspry_toolkit_change_email_sender_name');
delete_site_option('inspry_toolkit_change_email_sender_name');
delete_option('inspry_toolkit_change_user_notifications_email_sender');
delete_site_option('inspry_toolkit_change_user_notifications_email_sender');
delete_option('inspry_toolkit_checksum_verification_for_wordpress_core_files_email_send');
delete_site_option('inspry_toolkit_checksum_verification_for_wordpress_core_files_email_send');
delete_option('inspry_toolkit_disable_admin_notice');
delete_site_option('inspry_toolkit_disable_admin_notice');
delete_option('inspry_toolkit_disable_admin_notice_user_list');
delete_site_option('inspry_toolkit_disable_admin_notice_user_list');
delete_option('wbcr_dan_hide_admin_notices');
delete_site_option('wbcr_dan_hide_admin_notices');
delete_option('inspry_toolkit_disable_installs_and_updates');
delete_site_option('inspry_toolkit_disable_installs_and_updates');
delete_option('inspry_toolkit_disable_installs_and_updates_list');
delete_site_option('inspry_toolkit_disable_installs_and_updates_list');
delete_option('inspry_toolkit_enable_plugin_activations_admin_notifications_plugin_list');
delete_site_option('inspry_toolkit_enable_plugin_activations_admin_notifications_plugin_list');
delete_option('inspry_toolkit_enable_plugin_activations_admin_notifications_list');
delete_site_option('inspry_toolkit_enable_plugin_activations_admin_notifications_list');
delete_option('inspry_toolkit_enable_plugin_update_admin_notifications');
delete_site_option('inspry_toolkit_enable_plugin_update_admin_notifications');
delete_option('inspry_toolkit_enable_plugin_update_admin_notifications_plugin_list');
delete_site_option('inspry_toolkit_enable_plugin_update_admin_notifications_plugin_list');
delete_option('inspry_toolkit_enable_plugin_update_admin_notifications_list');
delete_site_option('inspry_toolkit_enable_plugin_update_admin_notifications_list');
delete_option('inspry_toolkit_limit_post_revisions_number');
delete_site_option('inspry_toolkit_limit_post_revisions_number');
delete_option('inspry_toolkit_limit_users_modify_admin_email');
delete_site_option('inspry_toolkit_limit_users_modify_admin_email');
delete_option('inspry_toolkit_limit_users_modify_admin_email_user_list');
delete_site_option('inspry_toolkit_limit_users_modify_admin_email_user_list');
delete_option('inspry_toolkit_maintenance_mode_heading');
delete_site_option('inspry_toolkit_maintenance_mode_heading');
delete_option('inspry_toolkit_maintenance_mode_sentence');
delete_site_option('inspry_toolkit_maintenance_mode_sentence');
delete_option('inspry_toolkit_development_environment_host_name');
delete_site_option('inspry_toolkit_development_environment_host_name');
delete_option('inspry_toolkit_manage_development_environment_banner_color');
delete_site_option('inspry_toolkit_manage_development_environment_banner_color');
delete_option('inspry_toolkit_development_environment_user_list');
delete_site_option('inspry_toolkit_development_environment_user_list');
delete_option('inspry_toolkit_payments_test_mode_check_admin_notifications_list');
delete_site_option('inspry_toolkit_payments_test_mode_check_admin_notifications_list');
delete_option('woocommerce_stripe_settings');
delete_site_option('woocommerce_stripe_settings');
delete_option('woocommerce-ppcp-data-common');
delete_site_option('woocommerce-ppcp-data-common');
delete_option('woocommerce_authorize_net_cim_credit_card_settings');
delete_site_option('woocommerce_authorize_net_cim_credit_card_settings');
delete_option('last_test_mode_gateways');
delete_site_option('last_test_mode_gateways');
delete_option('last_test_mode_email_sent');
delete_site_option('last_test_mode_email_sent');
delete_option('inspry_toolkit_remove_site_health');
delete_site_option('inspry_toolkit_remove_site_health');
delete_option('inspry_toolkit_remove_site_health_user_list');
delete_site_option('inspry_toolkit_remove_site_health_user_list');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'inspry_toolkit_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('inspry_toolkit_payments_disable_check_admin_notifications_list');
delete_site_option('inspry_toolkit_payments_disable_check_admin_notifications_list');
delete_option('inspry_toolkit_limit_admins_list');
delete_site_option('inspry_toolkit_limit_admins_list');
delete_option('inspry_toolkit_limit_admins');
delete_site_option('inspry_toolkit_limit_admins');
delete_option('inspry_toolkit_stop_user_enumeration');
delete_site_option('inspry_toolkit_stop_user_enumeration');
delete_option('inspry_toolkit_checksum_verification_for_wordpress_core_files');
delete_site_option('inspry_toolkit_checksum_verification_for_wordpress_core_files');
delete_option('inspry_toolkit_disable_media_comments');
delete_site_option('inspry_toolkit_disable_media_comments');
delete_option('inspry_toolkit_prev_payment_gateways');
delete_site_option('inspry_toolkit_prev_payment_gateways');

// Delete Transients
delete_transient('inspry_toolkit_activation_notification');
delete_site_transient('inspry_toolkit_activation_notification');
delete_transient('iat_access_token');
delete_site_transient('iat_access_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('cron_called');
wp_clear_scheduled_hook('check_gateway_test_mode_event');

