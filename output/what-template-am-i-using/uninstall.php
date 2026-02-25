<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wtaiu-server-ip');
delete_site_option('wtaiu-server-ip');
delete_option('wtaiu-version');
delete_site_option('wtaiu-version');

