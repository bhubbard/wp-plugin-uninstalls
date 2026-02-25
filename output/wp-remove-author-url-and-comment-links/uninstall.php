<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('DAUnCL_settings');
delete_site_option('DAUnCL_settings');
delete_option('disable_comment_links_settings');
delete_site_option('disable_comment_links_settings');

