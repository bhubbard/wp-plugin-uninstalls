<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shareopenly_text');
delete_site_option('shareopenly_text');
delete_option('shareopenly_priority');
delete_site_option('shareopenly_priority');
delete_option('shareopenly_type');
delete_site_option('shareopenly_type');

