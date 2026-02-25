<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ftsn_token');
delete_site_option('ftsn_token');
delete_option('ftsn_id');
delete_site_option('ftsn_id');
delete_option('ftsn_email');
delete_site_option('ftsn_email');
delete_option('ftsn_connected');
delete_site_option('ftsn_connected');

