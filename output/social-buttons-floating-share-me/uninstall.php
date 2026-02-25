<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ca-sms-twitter');
delete_site_option('ca-sms-twitter');
delete_option('ca-sms-facebook');
delete_site_option('ca-sms-facebook');
delete_option('ca-sms-googleplus');
delete_site_option('ca-sms-googleplus');

