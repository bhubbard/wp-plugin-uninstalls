<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('site_mail_from_email');
delete_site_option('site_mail_from_email');
delete_option('site_mail_from_name');
delete_site_option('site_mail_from_name');

