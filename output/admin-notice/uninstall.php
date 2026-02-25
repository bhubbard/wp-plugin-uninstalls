<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agw_admin_notice_msg');
delete_site_option('agw_admin_notice_msg');
delete_option('agw_admin_notice_style');
delete_site_option('agw_admin_notice_style');
delete_option('agw_admin_notice_enable');
delete_site_option('agw_admin_notice_enable');

