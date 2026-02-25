<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ciusan_register_login');
delete_site_option('ciusan_register_login');
delete_option('ciusan_register_login_option');
delete_site_option('ciusan_register_login_option');
delete_option('name');
delete_site_option('name');

