<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shortcode_ebayaffiliate_system');
delete_site_option('shortcode_ebayaffiliate_system');
delete_option('ebayaff_settings');
delete_site_option('ebayaff_settings');

