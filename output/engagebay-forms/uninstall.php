<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('engagebay_domain');
delete_site_option('engagebay_domain');
delete_option('engagebay_rest_api');
delete_site_option('engagebay_rest_api');
delete_option('engagebay_email');
delete_site_option('engagebay_email');
delete_option('engagebay_password');
delete_site_option('engagebay_password');

