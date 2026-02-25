<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('display-on-free');
delete_site_option('display-on-free');
delete_option('display-on-connect');
delete_site_option('display-on-connect');
delete_option('display-on-invalid');
delete_site_option('display-on-invalid');
delete_option('show-www');
delete_site_option('show-www');
delete_option('show-whois-output');
delete_site_option('show-whois-output');
delete_option('before-whois-output');
delete_site_option('before-whois-output');
delete_option('after-whois-output');
delete_site_option('after-whois-output');

