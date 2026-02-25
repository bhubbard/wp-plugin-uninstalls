<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-maintenance-mode-msqld');
delete_site_option('wp-maintenance-mode-msqld');

