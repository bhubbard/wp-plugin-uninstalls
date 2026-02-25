<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('unlockpage_verification_token');
delete_site_option('unlockpage_verification_token');
delete_option('unlockpage_signing_secret');
delete_site_option('unlockpage_signing_secret');
delete_option('unlockpage_api_url');
delete_site_option('unlockpage_api_url');

