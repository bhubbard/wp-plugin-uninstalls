<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ab-wp-security-user-enumeration');
delete_site_option('ab-wp-security-user-enumeration');
delete_option('ab-wp-security-wp-version');
delete_site_option('ab-wp-security-wp-version');
delete_option('ab-wp-security-xml-rpc');
delete_site_option('ab-wp-security-xml-rpc');
delete_option('ab-wp-security-dir-browse');
delete_site_option('ab-wp-security-dir-browse');

