<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('strcpv_page_refreshed_data');
delete_site_transient('strcpv_page_refreshed_data');

