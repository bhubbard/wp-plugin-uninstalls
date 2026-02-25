<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adev_token');
delete_site_option('adev_token');
delete_option('adev_token_expired_message');
delete_site_option('adev_token_expired_message');
delete_option('adev_whitelist');
delete_site_option('adev_whitelist');
delete_option('adev_blacklist');
delete_site_option('adev_blacklist');
delete_option('adev_domain_whitelist');
delete_site_option('adev_domain_whitelist');
delete_option('adev_domain_blacklist');
delete_site_option('adev_domain_blacklist');
delete_option('adev_allow_free_email');
delete_site_option('adev_allow_free_email');
delete_option('adev_allow_role_business_email');
delete_site_option('adev_allow_role_business_email');
delete_option('adev_allow_disposable_email');
delete_site_option('adev_allow_disposable_email');
delete_option('adev_attempts');
delete_site_option('adev_attempts');
delete_option('adev_ignored_uris');
delete_site_option('adev_ignored_uris');

