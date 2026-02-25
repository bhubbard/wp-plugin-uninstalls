<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nsd_ssw_plugins_categories');
delete_site_option('nsd_ssw_plugins_categories');
delete_option('nsd_ssw_plugins_list');
delete_site_option('nsd_ssw_plugins_list');
delete_option('nsd_ssw_themes_categories');
delete_site_option('nsd_ssw_themes_categories');
delete_option('nsd_ssw_themes_list');
delete_site_option('nsd_ssw_themes_list');
delete_option('nsd_ssw_config_options');
delete_site_option('nsd_ssw_config_options');

