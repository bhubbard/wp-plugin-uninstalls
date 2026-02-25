<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('magenet_links_show_by');
delete_site_option('magenet_links_show_by');
delete_option('magenet_links_autoinstall_key');
delete_site_option('magenet_links_autoinstall_key');
delete_option('magenet_links_last_update');
delete_site_option('magenet_links_last_update');

