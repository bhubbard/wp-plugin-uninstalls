<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('image_watermark_options');
delete_site_option('image_watermark_options');
delete_option('image_watermark_version');
delete_site_option('image_watermark_version');

