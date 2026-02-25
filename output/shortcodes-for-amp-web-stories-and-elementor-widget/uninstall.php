<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WSAE-v');
delete_site_option('WSAE-v');
delete_option('WSAE-type');
delete_site_option('WSAE-type');
delete_option('wsae-installDate');
delete_site_option('wsae-installDate');
delete_option('wsae-alreadyRated');
delete_site_option('wsae-alreadyRated');

