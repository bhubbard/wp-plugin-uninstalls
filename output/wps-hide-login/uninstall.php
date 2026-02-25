<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whl_page');
delete_site_option('whl_page');
delete_option('whl_redirect_admin');
delete_site_option('whl_redirect_admin');
delete_option('whl_redirect');
delete_site_option('whl_redirect');

