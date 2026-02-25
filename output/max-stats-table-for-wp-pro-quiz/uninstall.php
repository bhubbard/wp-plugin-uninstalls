<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppq_statistics_tables_last_cleared');
delete_site_option('wppq_statistics_tables_last_cleared');

