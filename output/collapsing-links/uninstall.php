<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('collapsLinkInFooter');
delete_site_option('collapsLinkInFooter');
delete_option('collapsLinkOrigStyle');
delete_site_option('collapsLinkOrigStyle');
delete_option('collapsLinkDefaultStyles');
delete_site_option('collapsLinkDefaultStyles');
delete_option('collapsLinkStyle');
delete_site_option('collapsLinkStyle');
delete_option('collapsLinkSidebarId');
delete_site_option('collapsLinkSidebarId');

