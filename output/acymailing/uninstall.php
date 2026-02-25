<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fromname');
delete_site_option('fromname');
delete_option('wp_mail_smtp');
delete_site_option('wp_mail_smtp');

