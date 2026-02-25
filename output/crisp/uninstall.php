<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('website_id');
delete_site_option('website_id');
delete_option('crisp_onboarding');
delete_site_option('crisp_onboarding');
delete_option('website_verify');
delete_site_option('website_verify');

