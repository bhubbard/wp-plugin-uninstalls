<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_csi_link');
delete_site_option('_csi_link');
delete_option('_csi_file');
delete_site_option('_csi_file');

