<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('peqi_token');
delete_site_option('peqi_token');
delete_option('peqi_domain_key');
delete_site_option('peqi_domain_key');
delete_option('peqi_domain_fqdn');
delete_site_option('peqi_domain_fqdn');
delete_option('peqi_domain_id');
delete_site_option('peqi_domain_id');
delete_option('peqi_user_name');
delete_site_option('peqi_user_name');
delete_option('peqi_user_email');
delete_site_option('peqi_user_email');
delete_option('peqi_checkpoint');
delete_site_option('peqi_checkpoint');

// Delete Transients
delete_transient('peqi_error_login_mail');
delete_site_transient('peqi_error_login_mail');
delete_transient('peqi_error_login_password');
delete_site_transient('peqi_error_login_password');
delete_transient('peqi_error_login');
delete_site_transient('peqi_error_login');
delete_transient('peqi_error_register_mail');
delete_site_transient('peqi_error_register_mail');
delete_transient('peqi_error_register_name');
delete_site_transient('peqi_error_register_name');
delete_transient('peqi_error_register_phone');
delete_site_transient('peqi_error_register_phone');
delete_transient('peqi_error_register_password');
delete_site_transient('peqi_error_register_password');
delete_transient('peqi_success_register');
delete_site_transient('peqi_success_register');
delete_transient('peqi_error_register');
delete_site_transient('peqi_error_register');
delete_transient('peqi_success_clear_cache');
delete_site_transient('peqi_success_clear_cache');
delete_transient('peqi_error_clear_cache');
delete_site_transient('peqi_error_clear_cache');
delete_transient('peqi_error_check_website');
delete_site_transient('peqi_error_check_website');
delete_transient('peqi_validation_results');
delete_site_transient('peqi_validation_results');
delete_transient('peqi_success_change_level');
delete_site_transient('peqi_success_change_level');
delete_transient('peqi_error_change_level');
delete_site_transient('peqi_error_change_level');
delete_transient('peqi_payment_url');
delete_site_transient('peqi_payment_url');
delete_transient('peqi_error_activate_plan');
delete_site_transient('peqi_error_activate_plan');
delete_transient('peqi_error_create_domain');
delete_site_transient('peqi_error_create_domain');
delete_transient('peqi_error_pointed_domain');
delete_site_transient('peqi_error_pointed_domain');
delete_transient('peqi_payment_id');
delete_site_transient('peqi_payment_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('schedule_task');

