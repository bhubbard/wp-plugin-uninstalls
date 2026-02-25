<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('toast_post_types');
delete_site_option('toast_post_types');
delete_option('toast_enable');
delete_site_option('toast_enable');
delete_option('default_toast_time');
delete_site_option('default_toast_time');
delete_option('toast_auth_visible');
delete_site_option('toast_auth_visible');
delete_option('toast_new_tab');
delete_site_option('toast_new_tab');

