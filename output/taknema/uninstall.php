<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('taknema_storage_method');
delete_site_option('taknema_storage_method');
delete_option('taknema_filter_pages');
delete_site_option('taknema_filter_pages');
delete_option('taknema_post_types');
delete_site_option('taknema_post_types');
delete_option('taknema_custom_pages');
delete_site_option('taknema_custom_pages');
delete_option('taknema_enable_debug');
delete_site_option('taknema_enable_debug');
delete_option('taknema_exclude_categories');
delete_site_option('taknema_exclude_categories');
delete_option('taknema_disable_tracking');
delete_site_option('taknema_disable_tracking');
delete_option('taknema_version');
delete_site_option('taknema_version');
delete_option('taknema_activation_sent');
delete_site_option('taknema_activation_sent');
delete_option('taknema_last_check');
delete_site_option('taknema_last_check');

// Delete Transients
delete_transient('taknema_activation_notice');
delete_site_transient('taknema_activation_notice');

