<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('primal_auto_insert_display');
delete_site_option('primal_auto_insert_display');
delete_option('primal_auto_insert_color');
delete_site_option('primal_auto_insert_color');
delete_option('primal_external_links');
delete_site_option('primal_external_links');
delete_option('primal_plugin_version');
delete_site_option('primal_plugin_version');

