<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qb_mm_enabled');
delete_site_option('qb_mm_enabled');
delete_option('qb_mm_style');
delete_site_option('qb_mm_style');
delete_option('qb_mm_title');
delete_site_option('qb_mm_title');
delete_option('qb_mm_message');
delete_site_option('qb_mm_message');
delete_option('qb_mm_logo_id');
delete_site_option('qb_mm_logo_id');

