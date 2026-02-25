<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('afr_elems');
delete_site_option('afr_elems');
delete_option('afr_debug');
delete_site_option('afr_debug');
delete_option('afr_cookie_delay');
delete_site_option('afr_cookie_delay');
delete_option('afr_normal');
delete_site_option('afr_normal');
delete_option('afr_large');
delete_site_option('afr_large');
delete_option('afr_xlarge');
delete_site_option('afr_xlarge');

