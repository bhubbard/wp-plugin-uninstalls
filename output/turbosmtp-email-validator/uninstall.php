<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('turbosmtp_email_validator_enabled');
delete_site_option('turbosmtp_email_validator_enabled');
delete_option('turbosmtp_email_validator_api_timeout');
delete_site_option('turbosmtp_email_validator_api_timeout');
delete_option('turbosmtp_email_validator_consumer_key');
delete_site_option('turbosmtp_email_validator_consumer_key');
delete_option('turbosmtp_email_validator_consumer_secret');
delete_site_option('turbosmtp_email_validator_consumer_secret');
delete_option('turbosmtp_email_validator_validation_forms');
delete_site_option('turbosmtp_email_validator_validation_forms');
delete_option('turbosmtp_email_validator_validation_pass');
delete_site_option('turbosmtp_email_validator_validation_pass');
delete_option('turbosmtp_email_validator_error_message');
delete_site_option('turbosmtp_email_validator_error_message');
delete_option('turbosmtp_email_validator_whitelist');
delete_site_option('turbosmtp_email_validator_whitelist');
delete_option('turbosmtp_email_validator_general_settings');
delete_site_option('turbosmtp_email_validator_general_settings');

// Delete Transients
delete_transient('turbosmtp_email_validator_subscription');
delete_site_transient('turbosmtp_email_validator_subscription');

