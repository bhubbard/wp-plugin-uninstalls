<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('first-text');
delete_site_option('first-text');
delete_option('second-text');
delete_site_option('second-text');

