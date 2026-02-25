<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tokenlink_zendesk_subdomain');
delete_site_option('tokenlink_zendesk_subdomain');
delete_option('tokenlink_zendesk_shared_key');
delete_site_option('tokenlink_zendesk_shared_key');
delete_option('tokenlink_zendesk_login_redirect');
delete_site_option('tokenlink_zendesk_login_redirect');

