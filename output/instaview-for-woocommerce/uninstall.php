<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('instaview_enable');
delete_site_option('instaview_enable');
delete_option('instaview_enableformobile');
delete_site_option('instaview_enableformobile');
delete_option('instaview_buttontype');
delete_site_option('instaview_buttontype');

