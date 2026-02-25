<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('default-image-url');
delete_site_option('default-image-url');
delete_option('active-meta-data');
delete_site_option('active-meta-data');

