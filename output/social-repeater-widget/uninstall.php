<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('max_entries');
delete_site_option('max_entries');
delete_option('srw_style');
delete_site_option('srw_style');
delete_option('srw_link_target');
delete_site_option('srw_link_target');

