<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy-cookie-consent-gtm-id');
delete_site_option('easy-cookie-consent-gtm-id');
delete_option('easy-cookie-consent-version');
delete_site_option('easy-cookie-consent-version');

