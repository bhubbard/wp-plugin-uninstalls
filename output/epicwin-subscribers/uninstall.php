<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('epicwin_email_from');
delete_site_option('epicwin_email_from');
delete_option('epicwin_email_subject');
delete_site_option('epicwin_email_subject');
delete_option('epicwin_email_message');
delete_site_option('epicwin_email_message');

