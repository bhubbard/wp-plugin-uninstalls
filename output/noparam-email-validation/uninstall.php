<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('noparam_api_key');
delete_site_option('noparam_api_key');
delete_option('noparam_cf7_enabled');
delete_site_option('noparam_cf7_enabled');
delete_option('noparam_wpforms_enabled');
delete_site_option('noparam_wpforms_enabled');
delete_option('noparam_registration_enabled');
delete_site_option('noparam_registration_enabled');
delete_option('noparam_comments_enabled');
delete_site_option('noparam_comments_enabled');
delete_option('noparam_invalid_email_message');
delete_site_option('noparam_invalid_email_message');
delete_option('noparam_disposable_email_message');
delete_site_option('noparam_disposable_email_message');
delete_option('noparam_role_email_message');
delete_site_option('noparam_role_email_message');
delete_option('noparam_suggestion_message');
delete_site_option('noparam_suggestion_message');
delete_option('noparam_disposable_message');
delete_site_option('noparam_disposable_message');
delete_option('noparam_role_based_message');
delete_site_option('noparam_role_based_message');
delete_option('noparam_requests_left');
delete_site_option('noparam_requests_left');
delete_option('noparam_version');
delete_site_option('noparam_version');

// Delete Transients
delete_transient('noparam_quota_status');
delete_site_transient('noparam_quota_status');

