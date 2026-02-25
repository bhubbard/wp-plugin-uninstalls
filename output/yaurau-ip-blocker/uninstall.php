<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('option');
delete_site_option('option');
delete_option('some_other_option');
delete_site_option('some_other_option');

