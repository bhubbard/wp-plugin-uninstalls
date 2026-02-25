<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phplugins_carts_show_id');
delete_site_option('phplugins_carts_show_id');
delete_option('phplugins_carts_no_ip');
delete_site_option('phplugins_carts_no_ip');
delete_option('phplugins_carts_no_url');
delete_site_option('phplugins_carts_no_url');
delete_option('phplugins_carts_debug');
delete_site_option('phplugins_carts_debug');
delete_option('phplugins_carts_migration_1_2_0_complete');
delete_site_option('phplugins_carts_migration_1_2_0_complete');
delete_option('phplugins_carts_version');
delete_site_option('phplugins_carts_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('phplugins_livecarts_hourly');

