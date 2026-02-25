<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abfc_top');
delete_site_option('abfc_top');
delete_option('abfc_left');
delete_site_option('abfc_left');
delete_option('abfc_top2');
delete_site_option('abfc_top2');
delete_option('abfc_left2');
delete_site_option('abfc_left2');

