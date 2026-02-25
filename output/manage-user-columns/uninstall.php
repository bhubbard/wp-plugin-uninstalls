<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('muc_custom_cols');
delete_site_option('muc_custom_cols');
delete_option('muc_def_cols');
delete_site_option('muc_def_cols');

