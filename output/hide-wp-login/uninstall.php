<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hmwl_hide_option');
delete_site_option('hmwl_hide_option');
delete_option('hmwl_slug_name');
delete_site_option('hmwl_slug_name');
delete_option('hmwl_login_key');
delete_site_option('hmwl_login_key');
delete_option('hmwl_redirect_slug');
delete_site_option('hmwl_redirect_slug');
delete_option('hmwl_hide_elementor');
delete_site_option('hmwl_hide_elementor');

