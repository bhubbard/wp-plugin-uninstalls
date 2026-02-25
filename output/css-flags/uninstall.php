<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CSS_Flags');
delete_site_option('CSS_Flags');

// Delete Transients
delete_transient('css-flags-all-countries');
delete_site_transient('css-flags-all-countries');
delete_transient('css-flags-all-regions');
delete_site_transient('css-flags-all-regions');

