<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_helloasso_settings');
delete_site_option('woocommerce_helloasso_settings');
delete_option('helloasso_access_token_asso');
delete_site_option('helloasso_access_token_asso');
delete_option('helloasso_refresh_token_asso');
delete_site_option('helloasso_refresh_token_asso');
delete_option('helloasso_testmode');
delete_site_option('helloasso_testmode');
delete_option('helloasso_token_expires_in_asso');
delete_site_option('helloasso_token_expires_in_asso');
delete_option('helloasso_refresh_token_expires_in_asso');
delete_site_option('helloasso_refresh_token_expires_in_asso');
delete_option('helloasso_access_token');
delete_site_option('helloasso_access_token');
delete_option('helloasso_refresh_token');
delete_site_option('helloasso_refresh_token');
delete_option('helloasso_token_expires_in');
delete_site_option('helloasso_token_expires_in');
delete_option('helloasso_refresh_token_expires_in');
delete_site_option('helloasso_refresh_token_expires_in');
delete_option('helloasso_code_verifier');
delete_site_option('helloasso_code_verifier');
delete_option('helloasso_state');
delete_site_option('helloasso_state');
delete_option('helloasso_authorization_url');
delete_site_option('helloasso_authorization_url');
delete_option('helloasso_organization_slug');
delete_site_option('helloasso_organization_slug');
delete_option('helloasso_webhook_url');
delete_site_option('helloasso_webhook_url');
delete_option('helloasso_webhook_data');
delete_site_option('helloasso_webhook_data');
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('hello_asso_cron_refresh_token_hook');

