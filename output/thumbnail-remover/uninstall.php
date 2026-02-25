<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trpl_disabled_image_sizes');
delete_site_option('trpl_disabled_image_sizes');

