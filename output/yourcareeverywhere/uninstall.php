<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yce_feed_format');
delete_site_option('yce_feed_format');
delete_option('yce_feed_title');
delete_site_option('yce_feed_title');
delete_option('yce_feed_h');
delete_site_option('yce_feed_h');
delete_option('yce_feed_w');
delete_site_option('yce_feed_w');
delete_option('yce_feed_plugin');
delete_site_option('yce_feed_plugin');

