<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssqr_network_options');
delete_site_option('ssqr_network_options');
delete_option('ssqr_options');
delete_site_option('ssqr_options');

