<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mprt_records');
delete_site_option('mprt_records');
delete_option('mprt_plugin');
delete_site_option('mprt_plugin');

// Delete Transients
delete_transient('mprt_remote_content');
delete_site_transient('mprt_remote_content');

