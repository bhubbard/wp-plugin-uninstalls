<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jsmtp_configuration');
delete_site_option('jsmtp_configuration');
delete_option('jsmtp_tester');
delete_site_option('jsmtp_tester');

