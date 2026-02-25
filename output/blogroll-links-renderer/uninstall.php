<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blrp_enable_links_manager');
delete_site_option('blrp_enable_links_manager');
delete_option('blrp_custom_class');
delete_site_option('blrp_custom_class');

