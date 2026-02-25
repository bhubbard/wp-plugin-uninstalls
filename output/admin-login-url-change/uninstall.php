<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jh_new_login_url');
delete_site_option('jh_new_login_url');
delete_option('aluc_need_flush');
delete_site_option('aluc_need_flush');
delete_option('aluc_runtime_slug');
delete_site_option('aluc_runtime_slug');
delete_option('aluc_runtime_slug_flush');
delete_site_option('aluc_runtime_slug_flush');

