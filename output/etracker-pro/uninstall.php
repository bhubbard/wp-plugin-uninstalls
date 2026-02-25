<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('etracker_authorized');
delete_site_option('etracker_authorized');
delete_option('etracker_uniqid');
delete_site_option('etracker_uniqid');

