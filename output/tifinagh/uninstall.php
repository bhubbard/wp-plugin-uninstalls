<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fu_header_font');
delete_site_option('fu_header_font');
delete_option('fu_body_font');
delete_site_option('fu_body_font');
delete_option('fu_lists_font');
delete_site_option('fu_lists_font');
delete_option('fu_custom_one_font');
delete_site_option('fu_custom_one_font');
delete_option('fu_custom_one');
delete_site_option('fu_custom_one');
delete_option('fu_custom_two_font');
delete_site_option('fu_custom_two_font');
delete_option('fu_custom_two');
delete_site_option('fu_custom_two');
delete_option('fu_custom_three_font');
delete_site_option('fu_custom_three_font');
delete_option('fu_custom_three');
delete_site_option('fu_custom_three');
delete_option('fu_custom_four_font');
delete_site_option('fu_custom_four_font');
delete_option('fu_custom_four');
delete_site_option('fu_custom_four');
delete_option('fu_custom_five_font');
delete_site_option('fu_custom_five_font');
delete_option('fu_custom_five');
delete_site_option('fu_custom_five');

