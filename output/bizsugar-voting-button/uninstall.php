<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smbsugar_box_align');
delete_site_option('smbsugar_box_align');
delete_option('smbsugar_display_home');
delete_site_option('smbsugar_display_home');
delete_option('smbsugar_display_page');
delete_site_option('smbsugar_display_page');
delete_option('smbsugar_display_post');
delete_site_option('smbsugar_display_post');
delete_option('smbsugar_display_cat');
delete_site_option('smbsugar_display_cat');
delete_option('smbsugar_display_archive');
delete_site_option('smbsugar_display_archive');
delete_option('smbsugar_button');
delete_site_option('smbsugar_button');

