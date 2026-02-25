<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wonderplugin_exclude_blog');
delete_site_option('wonderplugin_exclude_blog');
delete_option('wonderplugin_exclude_search');
delete_site_option('wonderplugin_exclude_search');
delete_option('wonderplugin_mainquery_only');
delete_site_option('wonderplugin_mainquery_only');

