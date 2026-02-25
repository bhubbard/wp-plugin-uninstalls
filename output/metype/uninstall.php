<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('metype-account-id');
delete_site_option('metype-account-id');
delete_option('metype-primary-color');
delete_site_option('metype-primary-color');
delete_option('metype-bg-color');
delete_site_option('metype-bg-color');
delete_option('metype-font-color');
delete_site_option('metype-font-color');
delete_option('metype-feed-widget-active');
delete_site_option('metype-feed-widget-active');
delete_option('metype-bg-id');
delete_site_option('metype-bg-id');
delete_option('metype-font-id');
delete_site_option('metype-font-id');

