<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vohtmlsitemap-post-types');
delete_site_option('vohtmlsitemap-post-types');
delete_option('vohtmlsitemap-page');
delete_site_option('vohtmlsitemap-page');

