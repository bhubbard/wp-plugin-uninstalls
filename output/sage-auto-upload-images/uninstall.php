<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sauimg_settings');
delete_site_option('sauimg_settings');

// Delete Transients
delete_transient('sauimg_upload_result');
delete_site_transient('sauimg_upload_result');

