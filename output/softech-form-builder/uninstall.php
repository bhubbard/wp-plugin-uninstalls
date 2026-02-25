<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('softech_forms_db_version');
delete_site_option('softech_forms_db_version');
delete_option('softech_smtp_host');
delete_site_option('softech_smtp_host');
delete_option('softech_smtp_port');
delete_site_option('softech_smtp_port');
delete_option('softech_smtp_username');
delete_site_option('softech_smtp_username');
delete_option('softech_smtp_password');
delete_site_option('softech_smtp_password');
delete_option('softech_smtp_encryption');
delete_site_option('softech_smtp_encryption');
delete_option('softech_smtp_from_email');
delete_site_option('softech_smtp_from_email');
delete_option('softech_smtp_from_name');
delete_site_option('softech_smtp_from_name');

