<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('user_custom_mail_title');
delete_site_option('user_custom_mail_title');
delete_option('user_custom_message');
delete_site_option('user_custom_message');

