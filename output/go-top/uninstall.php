<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bg_color');
delete_site_option('bg_color');
delete_option('icon_color');
delete_site_option('icon_color');
delete_option('music');
delete_site_option('music');

