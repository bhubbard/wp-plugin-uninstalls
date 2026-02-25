<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WC_CMETRIC_ARBYW_DB_VERSION');
delete_site_option('WC_CMETRIC_ARBYW_DB_VERSION');

