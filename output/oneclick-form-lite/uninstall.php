<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ocflite_transport');
delete_site_option('ocflite_transport');
delete_option('ocflite_to_email');
delete_site_option('ocflite_to_email');
delete_option('ocflite_from_email');
delete_site_option('ocflite_from_email');
delete_option('ocflite_from_name');
delete_site_option('ocflite_from_name');
delete_option('ocflite_smtp_host');
delete_site_option('ocflite_smtp_host');
delete_option('ocflite_smtp_port');
delete_site_option('ocflite_smtp_port');
delete_option('ocflite_smtp_secure');
delete_site_option('ocflite_smtp_secure');
delete_option('ocflite_smtp_user');
delete_site_option('ocflite_smtp_user');
delete_option('ocflite_smtp_pass');
delete_site_option('ocflite_smtp_pass');
delete_option('ocflite_file_format');
delete_site_option('ocflite_file_format');
delete_option('ocflite_recaptcha_enable');
delete_site_option('ocflite_recaptcha_enable');
delete_option('ocflite_recaptcha_site_key');
delete_site_option('ocflite_recaptcha_site_key');
delete_option('ocflite_recaptcha_secret_key');
delete_site_option('ocflite_recaptcha_secret_key');
delete_option('ocflite_recaptcha_threshold');
delete_site_option('ocflite_recaptcha_threshold');
delete_option('ocflite_recaptcha_action');
delete_site_option('ocflite_recaptcha_action');

// Delete Transients
delete_transient('ocflite_rate_limit');
delete_site_transient('ocflite_rate_limit');

