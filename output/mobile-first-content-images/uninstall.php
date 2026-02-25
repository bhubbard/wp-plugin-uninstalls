<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('option_add_css');
delete_site_option('option_add_css');
delete_option('options_add_css_class');
delete_site_option('options_add_css_class');
delete_option('option_image_size');
delete_site_option('option_image_size');
delete_option('option_image_class');
delete_site_option('option_image_class');
delete_option('EP_MFCI_option');
delete_site_option('EP_MFCI_option');

