<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_linked_pages');
delete_site_option('widget_linked_pages');
delete_option('plugin_linked_pages');
delete_site_option('plugin_linked_pages');

