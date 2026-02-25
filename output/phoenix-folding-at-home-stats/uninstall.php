<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phoenix_folding_stats');
delete_site_option('phoenix_folding_stats');

// Delete Transients
delete_transient('phoenix_folding_stats');
delete_site_transient('phoenix_folding_stats');

