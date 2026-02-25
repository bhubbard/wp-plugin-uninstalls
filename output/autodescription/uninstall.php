<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('the_seo_framework_upgraded_db_version');
delete_site_option('the_seo_framework_upgraded_db_version');

