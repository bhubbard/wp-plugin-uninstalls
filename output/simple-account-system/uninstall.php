<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_account_system_recaptcha');
delete_site_option('simple_account_system_recaptcha');
delete_option('simple_account_system_recaptcha_site_key');
delete_site_option('simple_account_system_recaptcha_site_key');
delete_option('simple_account_system_recaptcha_secret_key');
delete_site_option('simple_account_system_recaptcha_secret_key');
delete_option('simple_account_system_logout_links');
delete_site_option('simple_account_system_logout_links');

