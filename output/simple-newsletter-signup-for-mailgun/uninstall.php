<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simpnesi_mailgun_api_key');
delete_site_option('simpnesi_mailgun_api_key');
delete_option('simpnesi_mailgun_domain');
delete_site_option('simpnesi_mailgun_domain');
delete_option('simpnesi_mailing_list');
delete_site_option('simpnesi_mailing_list');
delete_option('simpnesi_recaptcha_site_key');
delete_site_option('simpnesi_recaptcha_site_key');
delete_option('simpnesi_recaptcha_secret_key');
delete_site_option('simpnesi_recaptcha_secret_key');
delete_option('simpnesi_recaptcha_threshold');
delete_site_option('simpnesi_recaptcha_threshold');

