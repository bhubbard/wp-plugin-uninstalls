<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('usa_import_timestamp');
delete_site_option('usa_import_timestamp');
delete_option('usa_import_dir_path');
delete_site_option('usa_import_dir_path');

// Delete Transients
delete_transient('usa_import_data');
delete_site_transient('usa_import_data');

