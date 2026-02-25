<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_status');
delete_site_option('plugin_status');
delete_option('theme-menuboots');
delete_site_option('theme-menuboots');
delete_option('theme-header-name');
delete_site_option('theme-header-name');
delete_option('theme-footer-name');
delete_site_option('theme-footer-name');

