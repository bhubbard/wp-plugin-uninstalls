<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('full_contact_api_key');
delete_site_option('full_contact_api_key');
delete_option('full_contact_ip_token');
delete_site_option('full_contact_ip_token');

