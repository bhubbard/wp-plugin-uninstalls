<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brandcenter_error_auth');
delete_site_option('brandcenter_error_auth');
delete_option('brandcenter_url');
delete_site_option('brandcenter_url');
delete_option('brandcenter_user');
delete_site_option('brandcenter_user');
delete_option('brandcenter_pwd');
delete_site_option('brandcenter_pwd');
delete_option('authData');
delete_site_option('authData');

