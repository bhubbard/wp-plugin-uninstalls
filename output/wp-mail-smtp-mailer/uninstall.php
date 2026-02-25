<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WPMSM_mail_data');
delete_site_option('WPMSM_mail_data');
delete_option('wpmsm_mail_smtp_ignore_notice');
delete_site_option('wpmsm_mail_smtp_ignore_notice');
delete_option('wpmsm_mailer_install_date');
delete_site_option('wpmsm_mailer_install_date');
delete_option('WPMS_mail_flag');
delete_site_option('WPMS_mail_flag');

