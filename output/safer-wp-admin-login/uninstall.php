<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rwl_page');
delete_site_option('rwl_page');
delete_option('rwl_redirect');
delete_site_option('rwl_redirect');
delete_option('rwl_admin');
delete_site_option('rwl_admin');

