<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rsuc-enable');
delete_site_option('rsuc-enable');
delete_option('rsuc-enable-homepage');
delete_site_option('rsuc-enable-homepage');
delete_option('rsuc-ip');
delete_site_option('rsuc-ip');
delete_option('rsuc-secret-word');
delete_site_option('rsuc-secret-word');
delete_option('rsuc-cookie-time');
delete_site_option('rsuc-cookie-time');
delete_option('rsuc-html');
delete_site_option('rsuc-html');

