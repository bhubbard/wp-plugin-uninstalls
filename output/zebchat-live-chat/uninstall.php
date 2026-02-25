<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jakweblc-lc-options');
delete_site_option('jakweblc-lc-options');
delete_option('jakweblc-embed-widget-id');
delete_site_option('jakweblc-embed-widget-id');

