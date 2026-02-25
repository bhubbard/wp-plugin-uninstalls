<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_contactform_email');
delete_site_option('woo_contactform_email');
delete_option('woo_framework_version');
delete_site_option('woo_framework_version');

