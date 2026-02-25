<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cp_lock_wc_password');
delete_site_option('cp_lock_wc_password');
delete_option('cp_lock_wc_allow_users');
delete_site_option('cp_lock_wc_allow_users');
delete_option('cp_lock_wc_message');
delete_site_option('cp_lock_wc_message');

