<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cookies_gdpr_content');
delete_site_option('cookies_gdpr_content');
delete_option('cookies_gdpr_consent');
delete_site_option('cookies_gdpr_consent');

