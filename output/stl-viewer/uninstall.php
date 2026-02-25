<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webgl_success_msg');
delete_site_option('webgl_success_msg');
delete_option('webgl_fail_msg');
delete_site_option('webgl_fail_msg');
delete_option('stlviewer_delete_settings');
delete_site_option('stlviewer_delete_settings');

