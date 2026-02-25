<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disable_pages');
delete_site_option('disable_pages');
delete_option('disable_message');
delete_site_option('disable_message');
delete_option('disable_admin');
delete_site_option('disable_admin');

