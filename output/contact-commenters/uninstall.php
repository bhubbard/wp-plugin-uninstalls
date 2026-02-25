<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ContactCommentersInitialized');
delete_site_option('ContactCommentersInitialized');
delete_option('mail-sender');
delete_site_option('mail-sender');
delete_option('mail-sender-email');
delete_site_option('mail-sender-email');
delete_option('mail-subject');
delete_site_option('mail-subject');
delete_option('mail-ind');
delete_site_option('mail-ind');
delete_option('mail-content');
delete_site_option('mail-content');

