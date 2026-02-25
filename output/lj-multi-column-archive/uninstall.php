<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('LJMultiColumnArchive');
delete_site_option('LJMultiColumnArchive');
delete_option('widget-LJMultiColumnArchive-title');
delete_site_option('widget-LJMultiColumnArchive-title');
delete_option('widget-LJMultiColumnArchive-showpostcount');
delete_site_option('widget-LJMultiColumnArchive-showpostcount');
delete_option('widget-LJMultiColumnArchive-numcolumns');
delete_site_option('widget-LJMultiColumnArchive-numcolumns');

