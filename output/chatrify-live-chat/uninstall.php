<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chatrify_uid');
delete_site_option('chatrify_uid');
delete_option('chatrify_groups');
delete_site_option('chatrify_groups');
delete_option('login');
delete_site_option('login');

