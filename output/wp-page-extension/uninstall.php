<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('current_extension');
delete_site_option('current_extension');
delete_option('extension_enabled');
delete_site_option('extension_enabled');
delete_option('extFlag');
delete_site_option('extFlag');

