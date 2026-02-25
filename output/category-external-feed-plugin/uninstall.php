<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_catfeed');
delete_site_option('widget_catfeed');
delete_option('catfeed_db_version');
delete_site_option('catfeed_db_version');

