<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ldsrctrckr_store_leadsource_pg_1');
delete_site_option('ldsrctrckr_store_leadsource_pg_1');

