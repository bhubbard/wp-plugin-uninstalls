<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mssg');
delete_site_option('mssg');
delete_option('ttle');
delete_site_option('ttle');

