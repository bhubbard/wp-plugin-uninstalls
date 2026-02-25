<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qtrans_meta_title_hook');
delete_site_option('qtrans_meta_title_hook');
delete_option('qtrans_meta_title_suffix');
delete_site_option('qtrans_meta_title_suffix');

