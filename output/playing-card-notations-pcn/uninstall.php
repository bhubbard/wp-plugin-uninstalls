<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pcards-font');
delete_site_option('pcards-font');
delete_option('pcards-suite-colours');
delete_site_option('pcards-suite-colours');
delete_option('pcards-suite-style');
delete_site_option('pcards-suite-style');

