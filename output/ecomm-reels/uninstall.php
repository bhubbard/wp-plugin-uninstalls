<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('ecomm-reels_rate_us');
delete_site_transient('ecomm-reels_rate_us');
delete_transient('ecomm-reels_never_show_notice');
delete_site_transient('ecomm-reels_never_show_notice');

