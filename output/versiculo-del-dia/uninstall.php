<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vdd_language');
delete_site_option('vdd_language');
delete_option('vdd_select_version');
delete_site_option('vdd_select_version');
delete_option('vdd_show_priority_version');
delete_site_option('vdd_show_priority_version');
delete_option('vdd_link_verse');
delete_site_option('vdd_link_verse');
delete_option('vdd_show_image_if_available');
delete_site_option('vdd_show_image_if_available');

