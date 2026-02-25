<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mail_debug_version');
delete_site_option('mail_debug_version');
delete_option('mail_debug_adminonly');
delete_site_option('mail_debug_adminonly');
delete_option('mail_debug_dbversion');
delete_site_option('mail_debug_dbversion');
delete_option('mail_debug_redirect_to');
delete_site_option('mail_debug_redirect_to');
delete_option('site_name');
delete_site_option('site_name');

