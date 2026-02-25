<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('protect_admin_login');
delete_site_option('protect_admin_login');
delete_option('cus_redirect');
delete_site_option('cus_redirect');

