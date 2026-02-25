<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('secuadem_admin_notice_message');
delete_site_option('secuadem_admin_notice_message');
delete_option('adminhash');
delete_site_option('adminhash');
delete_option('new_admin_email');
delete_site_option('new_admin_email');

