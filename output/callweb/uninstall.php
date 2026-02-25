<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('callweb-widget-key');
delete_site_option('callweb-widget-key');
delete_option('callweb-widget-is-active');
delete_site_option('callweb-widget-is-active');

