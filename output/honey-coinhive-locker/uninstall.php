<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chcl_hashes');
delete_site_option('chcl_hashes');
delete_option('locked_items');
delete_site_option('locked_items');
delete_option('chcl_site_key');
delete_site_option('chcl_site_key');
delete_option('chcl_secret_key');
delete_site_option('chcl_secret_key');
delete_option('chcl_color_setting');
delete_site_option('chcl_color_setting');
delete_option('chcl_bootstrap_button');
delete_site_option('chcl_bootstrap_button');

// Clear Cron Jobs
wp_clear_scheduled_hook('chcl_add_every_three_minutes');

