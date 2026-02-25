<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mbv_email_validator');
delete_site_option('mbv_email_validator');
delete_option('wp_mail_smtp');
delete_site_option('wp_mail_smtp');
delete_option('MBV_PLUGIN_VER');
delete_site_option('MBV_PLUGIN_VER');

