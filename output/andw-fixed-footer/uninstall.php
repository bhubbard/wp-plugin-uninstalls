<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('andwff_migration_done');
delete_site_option('andwff_migration_done');
delete_option('andwff_options');
delete_site_option('andwff_options');
delete_option('andw_fixed_footer_options');
delete_site_option('andw_fixed_footer_options');

