<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bc_cocp_plugin_activated');
delete_site_option('bc_cocp_plugin_activated');
delete_option('bc_cocp_plugin_notice_shown');
delete_site_option('bc_cocp_plugin_notice_shown');

