<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('varnish_socket_timeout');
delete_site_option('varnish_socket_timeout');
delete_option('varnish_control_terminal');
delete_site_option('varnish_control_terminal');
delete_option('varnish_version');
delete_site_option('varnish_version');
delete_option('varnish_control_key');
delete_site_option('varnish_control_key');
delete_option('purge_varnish_expire');
delete_site_option('purge_varnish_expire');
delete_option('purge_varnish_action');
delete_site_option('purge_varnish_action');
delete_option('varnish_bantype');
delete_site_option('varnish_bantype');

