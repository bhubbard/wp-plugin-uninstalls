<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imjolwp_webp_quality');
delete_site_option('imjolwp_webp_quality');
delete_option('imjolwp_remove_metadata');
delete_site_option('imjolwp_remove_metadata');

