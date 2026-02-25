<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('drop_drop_options');
delete_site_option('drop_drop_options');
delete_option('drop_drop_all_files');
delete_site_option('drop_drop_all_files');

