<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('engagebay_lp_builder_domain');
delete_site_option('engagebay_lp_builder_domain');
delete_option('engagebay_lp_builder_rest_api');
delete_site_option('engagebay_lp_builder_rest_api');
delete_option('engagebay_lp_builder_email');
delete_site_option('engagebay_lp_builder_email');
delete_option('engagebay_lp_builder_password');
delete_site_option('engagebay_lp_builder_password');

