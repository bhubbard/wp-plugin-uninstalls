<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('accessiweb_widget_settings');
delete_site_option('accessiweb_widget_settings');

