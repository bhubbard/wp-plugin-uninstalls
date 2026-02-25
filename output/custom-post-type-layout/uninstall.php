<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbw_primary_key');
delete_site_option('cbw_primary_key');
delete_option('cbw_shortcodes_data');
delete_site_option('cbw_shortcodes_data');

