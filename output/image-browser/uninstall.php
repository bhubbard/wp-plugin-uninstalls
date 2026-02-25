<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('image_browser');
delete_site_option('image_browser');
delete_option('ImageBrowserVersion');
delete_site_option('ImageBrowserVersion');

