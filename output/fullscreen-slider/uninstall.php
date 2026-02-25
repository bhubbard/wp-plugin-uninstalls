<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_slider');
delete_site_option('fs_slider');
delete_option('fs_images');
delete_site_option('fs_images');

