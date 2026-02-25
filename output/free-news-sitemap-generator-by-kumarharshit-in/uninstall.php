<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('khnsg_flush_needed');
delete_site_option('khnsg_flush_needed');
delete_option('khnsg_flush_rewrite_rules');
delete_site_option('khnsg_flush_rewrite_rules');
delete_option('khnsg_last_permalink_structure');
delete_site_option('khnsg_last_permalink_structure');

