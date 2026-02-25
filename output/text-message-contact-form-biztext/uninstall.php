<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbiztext-cform');
delete_site_option('wpbiztext-cform');
delete_option('biztext_custom_role_contact');
delete_site_option('biztext_custom_role_contact');
delete_option('biztext_custom_role');
delete_site_option('biztext_custom_role');

