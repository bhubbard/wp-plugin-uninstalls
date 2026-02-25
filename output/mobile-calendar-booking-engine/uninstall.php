<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcbe_widget_token');
delete_site_option('mcbe_widget_token');
delete_option('mcbe_settings');
delete_site_option('mcbe_settings');

