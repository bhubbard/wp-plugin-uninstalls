<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_waffirewall');
delete_site_option('_waffirewall');

// Delete Transients
delete_transient('waffirewall_ckey');
delete_site_transient('waffirewall_ckey');

