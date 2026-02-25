<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_sliding_effect');
delete_site_option('easy_sliding_effect');
delete_option('easy_sliding_image_type');
delete_site_option('easy_sliding_image_type');

