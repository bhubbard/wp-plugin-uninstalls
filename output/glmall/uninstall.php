<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('glmall_flash_notices');
delete_site_option('glmall_flash_notices');
delete_option('glmall_activation_error');
delete_site_option('glmall_activation_error');
delete_option('glmall_plugin_version');
delete_site_option('glmall_plugin_version');
delete_option('glmall_installl_completed');
delete_site_option('glmall_installl_completed');
delete_option('glmall_activated');
delete_site_option('glmall_activated');

