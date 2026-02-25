<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mved_pluginPage');
delete_site_option('mved_pluginPage');
delete_option('mvedASelect');
delete_site_option('mvedASelect');
delete_option('mvedCSelect');
delete_site_option('mvedCSelect');
delete_option('mved_settings');
delete_site_option('mved_settings');

