<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scheduler_main');
delete_site_option('scheduler_main');
delete_option('scheduler_version');
delete_site_option('scheduler_version');
delete_option('scheduler_xml');
delete_site_option('scheduler_xml');
delete_option('scheduler_xml_version');
delete_site_option('scheduler_xml_version');

