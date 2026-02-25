<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myhome_version');
delete_site_option('myhome_version');
delete_option('myhome_guid');
delete_site_option('myhome_guid');
delete_option('plugin_error');
delete_site_option('plugin_error');

