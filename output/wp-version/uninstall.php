<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SWV_options');
delete_site_option('SWV_options');
delete_option('version_major');
delete_site_option('version_major');
delete_option('version_minor');
delete_site_option('version_minor');
delete_option('version_revision');
delete_site_option('version_revision');
delete_option('version_build');
delete_site_option('version_build');
delete_option('TextBefore');
delete_site_option('TextBefore');
delete_option('HTMLCodeBefore');
delete_site_option('HTMLCodeBefore');
delete_option('HTMLCodeAfter');
delete_site_option('HTMLCodeAfter');
delete_option('nombre');
delete_site_option('nombre');
delete_option('RAZ_Num');
delete_site_option('RAZ_Num');

