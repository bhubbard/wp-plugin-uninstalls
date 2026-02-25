<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enable_404_on_not_exists_pagination');
delete_site_option('enable_404_on_not_exists_pagination');
delete_option('enable_yoast_organization_contacts');
delete_site_option('enable_yoast_organization_contacts');
delete_option('yoast_organization_phone');
delete_site_option('yoast_organization_phone');
delete_option('yoast_organization_email');
delete_site_option('yoast_organization_email');
delete_option('enable_removing_typetext');
delete_site_option('enable_removing_typetext');
delete_option('enable_replacing_current_links');
delete_site_option('enable_replacing_current_links');

