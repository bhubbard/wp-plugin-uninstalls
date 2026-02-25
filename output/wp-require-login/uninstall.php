<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('require_login');
delete_site_option('require_login');
delete_option('require_login_first_notice');
delete_site_option('require_login_first_notice');

