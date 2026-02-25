<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_file_upload_limiter_limits');
delete_site_option('simple_file_upload_limiter_limits');

