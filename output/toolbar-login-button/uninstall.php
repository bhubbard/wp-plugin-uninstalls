<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tlb_show_logged_in');
delete_site_option('tlb_show_logged_in');
delete_option('tlb_show_logged_out');
delete_site_option('tlb_show_logged_out');
delete_option('tlb_remember_user_role');
delete_site_option('tlb_remember_user_role');
delete_option('tlb_redirect_after_login');
delete_site_option('tlb_redirect_after_login');
delete_option('tlb_cookie_expire');
delete_site_option('tlb_cookie_expire');
delete_option('tlb_uninstall_delete');
delete_site_option('tlb_uninstall_delete');

