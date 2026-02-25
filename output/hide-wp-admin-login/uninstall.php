<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hwal_page');
delete_site_option('hwal_page');
delete_option('hwal_redirect_admin');
delete_site_option('hwal_redirect_admin');

