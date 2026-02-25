<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('admin-crlpuic-settings');
delete_site_option('admin-crlpuic-settings');
delete_option('crlpuic-settings');
delete_site_option('crlpuic-settings');

