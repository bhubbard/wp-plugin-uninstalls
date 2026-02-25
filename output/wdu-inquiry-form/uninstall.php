<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wdu_inquiryform_boot_switch');
delete_site_option('wdu_inquiryform_boot_switch');
delete_option('wdu_inquiryform_form_source');
delete_site_option('wdu_inquiryform_form_source');
delete_option('wdu_inquiryform_shortcode');
delete_site_option('wdu_inquiryform_shortcode');

