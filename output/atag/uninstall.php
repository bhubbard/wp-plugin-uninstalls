<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autoTag_number');
delete_site_option('autoTag_number');
delete_option('autoTag_option');
delete_site_option('autoTag_option');

