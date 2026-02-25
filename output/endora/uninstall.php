<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('endora_reklama');
delete_site_option('endora_reklama');
delete_option('endora_api');
delete_site_option('endora_api');
delete_option('endora_rss');
delete_site_option('endora_rss');
delete_option('endora_dash_rss');
delete_site_option('endora_dash_rss');
delete_option('endora_dash_api');
delete_site_option('endora_dash_api');

