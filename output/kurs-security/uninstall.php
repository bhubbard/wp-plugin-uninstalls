<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kurs_security_disable_rest_api');
delete_site_option('kurs_security_disable_rest_api');
delete_option('kurs_security_disable_rest_api_guests');
delete_site_option('kurs_security_disable_rest_api_guests');
delete_option('kurs_security_disable_xmlrpc');
delete_site_option('kurs_security_disable_xmlrpc');
delete_option('kurs_security_disable_file_editor');
delete_site_option('kurs_security_disable_file_editor');
delete_option('kurs_security_redirect_failed_login');
delete_site_option('kurs_security_redirect_failed_login');
delete_option('kurs_security_hide_wp_version');
delete_site_option('kurs_security_hide_wp_version');

