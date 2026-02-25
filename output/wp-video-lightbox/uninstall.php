<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpvl_prettyphoto_options');
delete_site_option('wpvl_prettyphoto_options');
delete_option('wpvl_enable_fancyBox');
delete_site_option('wpvl_enable_fancyBox');
delete_option('wpvl_enable_jquery');
delete_site_option('wpvl_enable_jquery');
delete_option('wpvl_enable_prettyPhoto');
delete_site_option('wpvl_enable_prettyPhoto');
delete_option('wpvl_plugin_version');
delete_site_option('wpvl_plugin_version');

