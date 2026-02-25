<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SEOPILOT_TEST');
delete_site_option('SEOPILOT_TEST');
delete_option('SEOPILOT_CHARSET');
delete_site_option('SEOPILOT_CHARSET');
delete_option('SEOPILOT_USER');
delete_site_option('SEOPILOT_USER');

