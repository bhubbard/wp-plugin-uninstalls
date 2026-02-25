<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('_fuertewp_login_db_version');
delete_site_option('_fuertewp_login_db_version');
delete_option('_fuertewp_status');
delete_site_option('_fuertewp_status');
delete_option('_fuertewp_access_denied_message');
delete_site_option('_fuertewp_access_denied_message');
delete_option('_fuertewp_recovery_email');
delete_site_option('_fuertewp_recovery_email');
delete_option('_fuertewp_sender_email_enable');
delete_site_option('_fuertewp_sender_email_enable');
delete_option('_fuertewp_sender_email');
delete_site_option('_fuertewp_sender_email');
delete_option('_fuertewp_autoupdate_core');
delete_site_option('_fuertewp_autoupdate_core');
delete_option('_fuertewp_autoupdate_plugins');
delete_site_option('_fuertewp_autoupdate_plugins');
delete_option('_fuertewp_autoupdate_themes');
delete_site_option('_fuertewp_autoupdate_themes');
delete_option('_fuertewp_autoupdate_translations');
delete_site_option('_fuertewp_autoupdate_translations');
delete_option('_fuertewp_autoupdate_frequency');
delete_site_option('_fuertewp_autoupdate_frequency');
delete_option('_fuertewp_login_enable');
delete_site_option('_fuertewp_login_enable');
delete_option('_fuertewp_registration_enable');
delete_site_option('_fuertewp_registration_enable');
delete_option('_fuertewp_login_max_attempts');
delete_site_option('_fuertewp_login_max_attempts');
delete_option('_fuertewp_login_lockout_duration');
delete_site_option('_fuertewp_login_lockout_duration');
delete_option('_fuertewp_login_increasing_lockout');
delete_site_option('_fuertewp_login_increasing_lockout');
delete_option('_fuertewp_login_ip_headers');
delete_site_option('_fuertewp_login_ip_headers');
delete_option('_fuertewp_login_gdpr_message');
delete_site_option('_fuertewp_login_gdpr_message');
delete_option('_fuertewp_login_data_retention');
delete_site_option('_fuertewp_login_data_retention');
delete_option('_fuertewp_login_url_hiding_enabled');
delete_site_option('_fuertewp_login_url_hiding_enabled');
delete_option('_fuertewp_custom_login_slug');
delete_site_option('_fuertewp_custom_login_slug');
delete_option('_fuertewp_login_url_type');
delete_site_option('_fuertewp_login_url_type');
delete_option('_fuertewp_redirect_invalid_logins');
delete_site_option('_fuertewp_redirect_invalid_logins');
delete_option('_fuertewp_redirect_invalid_logins_url');
delete_site_option('_fuertewp_redirect_invalid_logins_url');
delete_option('_fuertewp_restrictions_restapi_loggedin_only');
delete_site_option('_fuertewp_restrictions_restapi_loggedin_only');
delete_option('_fuertewp_restrictions_restapi_disable_app_passwords');
delete_site_option('_fuertewp_restrictions_restapi_disable_app_passwords');
delete_option('_fuertewp_restrictions_disable_xmlrpc');
delete_site_option('_fuertewp_restrictions_disable_xmlrpc');
delete_option('_fuertewp_restrictions_htaccess_security_rules');
delete_site_option('_fuertewp_restrictions_htaccess_security_rules');
delete_option('_fuertewp_restrictions_disable_admin_create_edit');
delete_site_option('_fuertewp_restrictions_disable_admin_create_edit');
delete_option('_fuertewp_restrictions_disable_weak_passwords');
delete_site_option('_fuertewp_restrictions_disable_weak_passwords');
delete_option('_fuertewp_restrictions_force_strong_passwords');
delete_site_option('_fuertewp_restrictions_force_strong_passwords');
delete_option('_fuertewp_restrictions_disable_admin_bar_roles');
delete_site_option('_fuertewp_restrictions_disable_admin_bar_roles');
delete_option('_fuertewp_restrictions_restrict_permalinks');
delete_site_option('_fuertewp_restrictions_restrict_permalinks');
delete_option('_fuertewp_restrictions_restrict_acf');
delete_site_option('_fuertewp_restrictions_restrict_acf');
delete_option('_fuertewp_restrictions_disable_theme_editor');
delete_site_option('_fuertewp_restrictions_disable_theme_editor');
delete_option('_fuertewp_restrictions_disable_plugin_editor');
delete_site_option('_fuertewp_restrictions_disable_plugin_editor');
delete_option('_fuertewp_restrictions_disable_theme_install');
delete_site_option('_fuertewp_restrictions_disable_theme_install');
delete_option('_fuertewp_restrictions_disable_plugin_install');
delete_site_option('_fuertewp_restrictions_disable_plugin_install');
delete_option('_fuertewp_restrictions_disable_customizer_css');
delete_site_option('_fuertewp_restrictions_disable_customizer_css');
delete_option('_fuertewp_emails_fatal_error');
delete_site_option('_fuertewp_emails_fatal_error');
delete_option('_fuertewp_emails_automatic_updates');
delete_site_option('_fuertewp_emails_automatic_updates');
delete_option('_fuertewp_emails_comment_awaiting_moderation');
delete_site_option('_fuertewp_emails_comment_awaiting_moderation');
delete_option('_fuertewp_emails_comment_has_been_published');
delete_site_option('_fuertewp_emails_comment_has_been_published');
delete_option('_fuertewp_emails_user_reset_their_password');
delete_site_option('_fuertewp_emails_user_reset_their_password');
delete_option('_fuertewp_emails_user_confirm_personal_data_export_request');
delete_site_option('_fuertewp_emails_user_confirm_personal_data_export_request');
delete_option('_fuertewp_emails_new_user_created');
delete_site_option('_fuertewp_emails_new_user_created');
delete_option('_fuertewp_emails_network_new_site_created');
delete_site_option('_fuertewp_emails_network_new_site_created');
delete_option('_fuertewp_emails_network_new_user_site_registered');
delete_site_option('_fuertewp_emails_network_new_user_site_registered');
delete_option('_fuertewp_emails_network_new_site_activated');
delete_site_option('_fuertewp_emails_network_new_site_activated');
delete_option('_fuertewp_tweaks_use_site_logo_login');
delete_site_option('_fuertewp_tweaks_use_site_logo_login');
delete_option('fuertewp_options');
delete_site_option('fuertewp_options');
delete_option('carbon_custom_sidebars');
delete_site_option('carbon_custom_sidebars');

// Delete Transients
delete_transient('fuertewp_cache_config');
delete_site_transient('fuertewp_cache_config');
delete_transient('fuertewp_login_attempts_cache');
delete_site_transient('fuertewp_login_attempts_cache');
delete_transient('fuertewp_ip_whitelist_cache');
delete_site_transient('fuertewp_ip_whitelist_cache');
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fuertewp_cleanup_login_logs');
wp_clear_scheduled_hook('fuertewp_trigger_updates');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

