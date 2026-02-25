<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wplogsec_url');
delete_site_option('wplogsec_url');
delete_option('lsfw_current_permalink_structure');
delete_site_option('lsfw_current_permalink_structure');

