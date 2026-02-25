<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gendiscover_license');
delete_site_option('gendiscover_license');
delete_option('gendiscover_domain');
delete_site_option('gendiscover_domain');

