<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trustifi_mailer_smtp_username');
delete_site_option('trustifi_mailer_smtp_username');
delete_option('trustifi_mailer_smtp_password');
delete_site_option('trustifi_mailer_smtp_password');
delete_option('trustifi_mailer_from_name');
delete_site_option('trustifi_mailer_from_name');
delete_option('trustifi_mailer_from_email');
delete_site_option('trustifi_mailer_from_email');
delete_option('trustifi_mailer_enable_encryption');
delete_site_option('trustifi_mailer_enable_encryption');
delete_option('trustifi_mailer_activated');
delete_site_option('trustifi_mailer_activated');

