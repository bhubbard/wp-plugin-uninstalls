<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcbfeed_rss_export_image');
delete_site_option('wcbfeed_rss_export_image');
delete_option('wcbfeed_rss_export_price');
delete_site_option('wcbfeed_rss_export_price');
delete_option('wcbfeed_rss_image_size');
delete_site_option('wcbfeed_rss_image_size');

