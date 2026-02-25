<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('runthings_secrets_db_version');
delete_site_option('runthings_secrets_db_version');
delete_option('runthings_secrets_add_page');
delete_site_option('runthings_secrets_add_page');
delete_option('runthings_secrets_created_page');
delete_site_option('runthings_secrets_created_page');
delete_option('runthings_secrets_view_page');
delete_site_option('runthings_secrets_view_page');
delete_option('runthings_secrets_default_expiration');
delete_site_option('runthings_secrets_default_expiration');
delete_option('runthings_secrets_default_max_views');
delete_site_option('runthings_secrets_default_max_views');
delete_option('runthings_secrets_enqueue_form_styles');
delete_site_option('runthings_secrets_enqueue_form_styles');
delete_option('runthings_secrets_recaptcha_enabled');
delete_site_option('runthings_secrets_recaptcha_enabled');
delete_option('runthings_secrets_recaptcha_public_key');
delete_site_option('runthings_secrets_recaptcha_public_key');
delete_option('runthings_secrets_recaptcha_private_key');
delete_site_option('runthings_secrets_recaptcha_private_key');
delete_option('runthings_secrets_recaptcha_score');
delete_site_option('runthings_secrets_recaptcha_score');
delete_option('runthings_secrets_rate_limit_enabled');
delete_site_option('runthings_secrets_rate_limit_enabled');
delete_option('runthings_secrets_rate_limit_tries_add');
delete_site_option('runthings_secrets_rate_limit_tries_add');
delete_option('runthings_secrets_rate_limit_tries_created');
delete_site_option('runthings_secrets_rate_limit_tries_created');
delete_option('runthings_secrets_rate_limit_tries_view');
delete_site_option('runthings_secrets_rate_limit_tries_view');
delete_option('runthings_secrets_rate_limit_tries_delete');
delete_site_option('runthings_secrets_rate_limit_tries_delete');
delete_option('runthings_secrets_rate_limit_exemption_enabled');
delete_site_option('runthings_secrets_rate_limit_exemption_enabled');
delete_option('runthings_secrets_rate_limit_exemption_roles');
delete_site_option('runthings_secrets_rate_limit_exemption_roles');
delete_option('runthings_secrets_stats_total_secrets');
delete_site_option('runthings_secrets_stats_total_secrets');
delete_option('runthings_secrets_stats_total_views');
delete_site_option('runthings_secrets_stats_total_views');
delete_option('runthings_secrets_first_run_completed');
delete_site_option('runthings_secrets_first_run_completed');
delete_option('runthings_secrets_encryption_key');
delete_site_option('runthings_secrets_encryption_key');

