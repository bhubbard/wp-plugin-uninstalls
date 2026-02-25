<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('contact-button-id');
delete_site_option('contact-button-id');
delete_option('contact-button-cb-verify-status');
delete_site_option('contact-button-cb-verify-status');
delete_option('contact-button-cb-verify-curl-body');
delete_site_option('contact-button-cb-verify-curl-body');
delete_option('contact-button-cb-in-header');
delete_site_option('contact-button-cb-in-header');

