<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cdb_2021_simply_auto_seo_options');
delete_site_option('cdb_2021_simply_auto_seo_options');
delete_option('CDB_2021_SIMPLY_AUTO_SEO_VERSION');
delete_site_option('CDB_2021_SIMPLY_AUTO_SEO_VERSION');

