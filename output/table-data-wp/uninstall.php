<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp_tdata_headername');
delete_site_option('bp_tdata_headername');
delete_option('bp_tdata_tablename');
delete_site_option('bp_tdata_tablename');
delete_option('bp_tdata_columnexclude');
delete_site_option('bp_tdata_columnexclude');

