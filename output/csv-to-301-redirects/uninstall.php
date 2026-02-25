<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csv_to_301_redirects_csv_file_path');
delete_site_option('csv_to_301_redirects_csv_file_path');

