<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FEEDID');
delete_site_option('FEEDID');
delete_option('PUBLISHER');
delete_site_option('PUBLISHER');

