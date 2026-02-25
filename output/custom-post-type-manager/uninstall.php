<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cptm_version');
delete_site_option('cptm_version');
delete_option('cptm_db_version');
delete_site_option('cptm_db_version');

