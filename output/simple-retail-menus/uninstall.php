<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jsrm_val_cols');
delete_site_option('jsrm_val_cols');
delete_option('jsrm_db_version');
delete_site_option('jsrm_db_version');

