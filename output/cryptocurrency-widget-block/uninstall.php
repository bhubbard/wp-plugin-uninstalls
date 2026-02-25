<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('ccwfg_coinpaprika_data');
delete_site_transient('ccwfg_coinpaprika_data');

