<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('barrierease_enabled');
delete_site_option('barrierease_enabled');
delete_option('barrierease_widget_url');
delete_site_option('barrierease_widget_url');

