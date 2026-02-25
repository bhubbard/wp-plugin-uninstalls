<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('son_cp_enable_copy_protection');
delete_site_option('son_cp_enable_copy_protection');
delete_option('son_cp_enable_right_click_protection');
delete_site_option('son_cp_enable_right_click_protection');
delete_option('son_cp_copy_message');
delete_site_option('son_cp_copy_message');
delete_option('son_cp_right_click_message');
delete_site_option('son_cp_right_click_message');
delete_option('son_cp_admin_message');
delete_site_option('son_cp_admin_message');

