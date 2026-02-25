<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('collapsPageVersion');
delete_site_option('collapsPageVersion');
delete_option('collapsPageStyle');
delete_site_option('collapsPageStyle');
delete_option('collapsPageOrigStyle');
delete_site_option('collapsPageOrigStyle');
delete_option('collapsPageDefaultStyles');
delete_site_option('collapsPageDefaultStyles');
delete_option('collapsPageSidebarId');
delete_site_option('collapsPageSidebarId');
delete_option('widget_collapspage');
delete_site_option('widget_collapspage');

