<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SitzzForceHttps_redirect_to_secure_site-id');
delete_site_option('SitzzForceHttps_redirect_to_secure_site-id');
delete_option('SitzzForceHttps_replace_insecure_elements-id');
delete_site_option('SitzzForceHttps_replace_insecure_elements-id');

