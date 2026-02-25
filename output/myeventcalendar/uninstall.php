<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mec_settings');
delete_site_option('mec_settings');
delete_option('mec_tables_created');
delete_site_option('mec_tables_created');

