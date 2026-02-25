<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('newsletter_from_name');
delete_site_option('newsletter_from_name');
delete_option('newsletter_from_email');
delete_site_option('newsletter_from_email');
delete_option('newsletter_from_subject');
delete_site_option('newsletter_from_subject');
delete_option('newsletter');
delete_site_option('newsletter');

