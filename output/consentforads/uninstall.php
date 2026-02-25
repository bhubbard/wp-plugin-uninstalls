<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('consent_for_ads_terms_accepted');
delete_site_option('consent_for_ads_terms_accepted');
delete_option('consent_for_ads_enable_debug');
delete_site_option('consent_for_ads_enable_debug');
delete_option('consent_for_ads_version');
delete_site_option('consent_for_ads_version');

