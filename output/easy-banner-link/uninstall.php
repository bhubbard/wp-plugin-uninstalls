<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('inx-banner-updates');
delete_site_transient('inx-banner-updates');
delete_transient('inx-banner-errors');
delete_site_transient('inx-banner-errors');

