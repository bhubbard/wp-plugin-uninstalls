<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ctgen_custom_image_sizes');
delete_site_option('ctgen_custom_image_sizes');

