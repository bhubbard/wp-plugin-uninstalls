<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hlcsqlwindow');
delete_site_option('hlcsqlwindow');
delete_option('hlcsqldatawindow');
delete_site_option('hlcsqldatawindow');

