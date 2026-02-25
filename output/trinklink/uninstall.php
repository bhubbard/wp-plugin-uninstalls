<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trinklink_aff_id');
delete_site_option('trinklink_aff_id');
delete_option('trinklink_aff_sub');
delete_site_option('trinklink_aff_sub');
delete_option('trinklink_source');
delete_site_option('trinklink_source');
delete_option('trinklink_excluded');
delete_site_option('trinklink_excluded');

