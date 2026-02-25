<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rdtcp_enable');
delete_site_option('rdtcp_enable');
delete_option('rdtcp_redirect_type');
delete_site_option('rdtcp_redirect_type');
delete_option('rdtcp_custom_page');
delete_site_option('rdtcp_custom_page');

