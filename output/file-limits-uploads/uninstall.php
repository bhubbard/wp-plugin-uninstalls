<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flu_maximum_execution_time');
delete_site_option('flu_maximum_execution_time');
delete_option('flu_max_file_size_uploads');
delete_site_option('flu_max_file_size_uploads');

