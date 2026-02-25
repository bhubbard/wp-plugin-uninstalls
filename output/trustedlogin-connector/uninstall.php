<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tl_permalinks_flushed');
delete_site_option('tl_permalinks_flushed');
delete_option('trustedlogin_vendor_config');
delete_site_option('trustedlogin_vendor_config');

