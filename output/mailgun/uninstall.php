<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailgun');
delete_site_option('mailgun');
delete_option('reply_to');
delete_site_option('reply_to');
delete_option('email_fallback');
delete_site_option('email_fallback');

