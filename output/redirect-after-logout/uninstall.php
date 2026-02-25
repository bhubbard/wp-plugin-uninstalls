<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('redalo_settings');
delete_site_option('redalo_settings');
delete_option('redalo_migrated');
delete_site_option('redalo_migrated');
delete_option('wpral_logout_redirect_url');
delete_site_option('wpral_logout_redirect_url');
delete_option('wpral_use_safe_redirect');
delete_site_option('wpral_use_safe_redirect');

