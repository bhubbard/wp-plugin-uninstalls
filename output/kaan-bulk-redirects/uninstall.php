<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kaan_bulk_redirects');
delete_site_option('kaan_bulk_redirects');
delete_option('kaan_bulk_redirects_old');
delete_site_option('kaan_bulk_redirects_old');

