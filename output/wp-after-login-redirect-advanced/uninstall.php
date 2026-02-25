<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wplra_login_redirect_enable');
delete_site_option('wplra_login_redirect_enable');
delete_option('wplra_login_redirect_filters');
delete_site_option('wplra_login_redirect_filters');

