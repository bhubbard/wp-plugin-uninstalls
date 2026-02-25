<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rfi_minimum_size');
delete_site_option('rfi_minimum_size');
delete_option('rfi_post_types');
delete_site_option('rfi_post_types');
delete_option('rfi_enforcement_start');
delete_site_option('rfi_enforcement_start');

