<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_bof_general');
delete_site_option('wc_bof_general');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wcbulkorderform');
delete_site_option('wcbulkorderform');

