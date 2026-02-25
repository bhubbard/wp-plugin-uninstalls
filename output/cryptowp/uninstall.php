<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cryptowp');
delete_site_option('cryptowp');

// Delete Transients
delete_transient('cryptowp_autorefresh');
delete_site_transient('cryptowp_autorefresh');

