<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ct_license_code');
delete_site_option('ct_license_code');
delete_option('template_page_id');
delete_site_option('template_page_id');

