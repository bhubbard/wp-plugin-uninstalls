<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rcb_flush_rewrite_rules');
delete_site_option('rcb_flush_rewrite_rules');
delete_option('Category_Prefix');
delete_site_option('Category_Prefix');

