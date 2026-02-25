<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apwebp_enable');
delete_site_option('apwebp_enable');
delete_option('apwebp_image_quality');
delete_site_option('apwebp_image_quality');
delete_option('apwebp_use_htaccess');
delete_site_option('apwebp_use_htaccess');
delete_option('apwebp_dont_conv_image_sizes');
delete_site_option('apwebp_dont_conv_image_sizes');

