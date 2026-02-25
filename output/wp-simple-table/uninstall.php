<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wst_row_select');
delete_site_option('wst_row_select');
delete_option('wst_column_select');
delete_site_option('wst_column_select');

