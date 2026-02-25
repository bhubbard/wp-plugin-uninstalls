<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simplegal_dir_path');
delete_site_option('simplegal_dir_path');
delete_option('simplegal_info_file');
delete_site_option('simplegal_info_file');

