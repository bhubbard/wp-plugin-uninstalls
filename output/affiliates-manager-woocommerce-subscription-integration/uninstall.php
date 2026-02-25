<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpam_wc_subscription_settings');
delete_site_option('wpam_wc_subscription_settings');

