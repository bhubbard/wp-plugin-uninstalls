<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('admbarpgn_network_settings');
delete_site_option('admbarpgn_network_settings');
delete_option('admbarpgn_settings');
delete_site_option('admbarpgn_settings');

