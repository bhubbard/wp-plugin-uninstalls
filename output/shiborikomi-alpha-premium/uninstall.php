<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('site_labels');
delete_site_option('site_labels');
delete_option('current_site_label');
delete_site_option('current_site_label');
delete_option('is_monthly');
delete_site_option('is_monthly');
delete_option('plugin_key');
delete_site_option('plugin_key');
delete_option('salpha_valid');
delete_site_option('salpha_valid');

