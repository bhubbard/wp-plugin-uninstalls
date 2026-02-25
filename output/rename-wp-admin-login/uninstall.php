<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rwal_page');
delete_site_option('rwal_page');
delete_option('rwal_redirect');
delete_site_option('rwal_redirect');
delete_option('rwal_admin');
delete_site_option('rwal_admin');
delete_option('rwal_page_input');
delete_site_option('rwal_page_input');
delete_option('rwal_redirect_field');
delete_site_option('rwal_redirect_field');

