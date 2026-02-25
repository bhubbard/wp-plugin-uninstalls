<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('media_file_label_images');
delete_site_option('media_file_label_images');
delete_option('hide_label_on_image');
delete_site_option('hide_label_on_image');

