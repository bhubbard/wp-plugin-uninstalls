<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('poststats');
delete_site_option('poststats');

// Delete Transients
delete_transient('poststats_widget');
delete_site_transient('poststats_widget');

