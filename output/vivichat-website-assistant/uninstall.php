<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vivichat-website-assistant_widget_id');
delete_site_option('vivichat-website-assistant_widget_id');

