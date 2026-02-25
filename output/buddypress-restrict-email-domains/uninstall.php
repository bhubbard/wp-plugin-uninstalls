<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('limited_email_domains');
delete_site_option('limited_email_domains');
delete_option('banned_email_domains');
delete_site_option('banned_email_domains');

