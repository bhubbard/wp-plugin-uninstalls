<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('profiling_user_permission_1');
delete_site_option('profiling_user_permission_1');
delete_option('profiling_user_permission_2');
delete_site_option('profiling_user_permission_2');
delete_option('always_show_profiling');
delete_site_option('always_show_profiling');
delete_option('allow_get_request');
delete_site_option('allow_get_request');
delete_option('override_disable_auto_save');
delete_site_option('override_disable_auto_save');
delete_option('override_disable_revisioning');
delete_site_option('override_disable_revisioning');

