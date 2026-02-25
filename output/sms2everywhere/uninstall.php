<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sms2everywhere');
delete_site_option('sms2everywhere');
delete_option('sms2everywhere_username');
delete_site_option('sms2everywhere_username');
delete_option('sms2everywhere_password');
delete_site_option('sms2everywhere_password');

