<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wctelnot_settings');
delete_site_option('wctelnot_settings');
delete_option('wctelnot_version');
delete_site_option('wctelnot_version');

