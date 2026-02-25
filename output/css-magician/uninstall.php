<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cssm_db_version');
delete_site_option('cssm_db_version');
delete_option('CSSM_VERSION_KEY');
delete_site_option('CSSM_VERSION_KEY');

