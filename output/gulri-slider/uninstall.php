<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('temp_transition');
delete_site_option('temp_transition');
delete_option('gsp_settings');
delete_site_option('gsp_settings');

