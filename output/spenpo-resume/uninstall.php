<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spcv_resume_api_require_auth');
delete_site_option('spcv_resume_api_require_auth');
delete_option('spcv_api_require_auth');
delete_site_option('spcv_api_require_auth');
delete_option('spcv_db_version');
delete_site_option('spcv_db_version');

