<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pt-require-login');
delete_site_option('pt-require-login');
delete_option('admin-email');
delete_site_option('admin-email');

