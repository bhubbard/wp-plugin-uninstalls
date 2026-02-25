<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('frmsvr_root');
delete_site_option('frmsvr_root');
delete_option('afsrreloaded_root_directory');
delete_site_option('afsrreloaded_root_directory');

