<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rakuten_applicationId');
delete_site_option('rakuten_applicationId');
delete_option('rakuten_application_secret');
delete_site_option('rakuten_application_secret');
delete_option('rakuten_affiliateId');
delete_site_option('rakuten_affiliateId');
delete_option('rakuten_pageCount_max');
delete_site_option('rakuten_pageCount_max');

