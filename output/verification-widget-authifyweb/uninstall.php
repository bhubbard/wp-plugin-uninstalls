<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vwfaw_authifyweb_profile_link');
delete_site_option('vwfaw_authifyweb_profile_link');
delete_option('vwfaw_add_link_to_head');
delete_site_option('vwfaw_add_link_to_head');
delete_option('vwfaw_widget_behavior');
delete_site_option('vwfaw_widget_behavior');

