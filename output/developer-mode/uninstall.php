<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jwdm_plugins_hidden');
delete_site_option('jwdm_plugins_hidden');
delete_option('jwdm_options');
delete_site_option('jwdm_options');
delete_option('jwdm_menuitems_hidden');
delete_site_option('jwdm_menuitems_hidden');
delete_option('jwdm_version');
delete_site_option('jwdm_version');

