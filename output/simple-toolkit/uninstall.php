<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clwpuu_disable_comments');
delete_site_option('clwpuu_disable_comments');
delete_option('clwpuu_google_analytics');
delete_site_option('clwpuu_google_analytics');
delete_option('clwpuu_classic_widgets');
delete_site_option('clwpuu_classic_widgets');
delete_option('clwpuu_classic_editor');
delete_site_option('clwpuu_classic_editor');
delete_option('clwpuu_maintenance_mode');
delete_site_option('clwpuu_maintenance_mode');
delete_option('clwpuu_disable_xmlrpc');
delete_site_option('clwpuu_disable_xmlrpc');
delete_option('clwpuu_regenerate_thumbnails');
delete_site_option('clwpuu_regenerate_thumbnails');
delete_option('clwpuu_duplicate_page');
delete_site_option('clwpuu_duplicate_page');
delete_option('clwpuu_maintenance_mode ');
delete_site_option('clwpuu_maintenance_mode ');

