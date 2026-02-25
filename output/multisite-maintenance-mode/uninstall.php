<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mmm-link');
delete_site_option('mmm-link');
delete_option('mmm-status');
delete_site_option('mmm-status');
delete_option('mmm-message');
delete_site_option('mmm-message');

