<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fileorganizer_pro_version');
delete_site_option('fileorganizer_pro_version');
delete_option('fileorganizer_version');
delete_site_option('fileorganizer_version');
delete_option('fileorganizer_options');
delete_site_option('fileorganizer_options');
delete_option('fileorganizer_promo_time');
delete_site_option('fileorganizer_promo_time');
delete_option('softaculous_plugin_update_notice');
delete_site_option('softaculous_plugin_update_notice');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

