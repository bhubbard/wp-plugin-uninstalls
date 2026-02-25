<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lnkbio_id');
delete_site_option('lnkbio_id');
delete_option('lnkbio_secret');
delete_site_option('lnkbio_secret');
delete_option('lnkbio_category');
delete_site_option('lnkbio_category');
delete_option('lnkbio_group');
delete_site_option('lnkbio_group');

