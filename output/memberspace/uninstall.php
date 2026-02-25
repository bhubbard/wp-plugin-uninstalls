<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('memberspace_extra_security');
delete_site_option('memberspace_extra_security');
delete_option('memberspace_rules');
delete_site_option('memberspace_rules');
delete_option('memberspace_subdomain');
delete_site_option('memberspace_subdomain');
delete_option('memberspace_last_updated');
delete_site_option('memberspace_last_updated');
delete_option('memberspace_display_banner');
delete_site_option('memberspace_display_banner');
delete_option('memberspace_public_key');
delete_site_option('memberspace_public_key');
delete_option('memberspace_site_contact');
delete_site_option('memberspace_site_contact');
delete_option('memberspace_site_ID');
delete_site_option('memberspace_site_ID');
delete_option('memberspace_last_sync_successful');
delete_site_option('memberspace_last_sync_successful');

