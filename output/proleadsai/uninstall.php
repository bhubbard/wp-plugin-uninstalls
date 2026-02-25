<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('proleadsai_onboarding');
delete_site_option('proleadsai_onboarding');
delete_option('proleadsai_dev_api_url');
delete_site_option('proleadsai_dev_api_url');

