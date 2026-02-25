<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('snll_db_version');
delete_site_option('snll_db_version');
delete_option('users_page_login_log_per_page');
delete_site_option('users_page_login_log_per_page');

