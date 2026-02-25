<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('growify_api_key');
delete_site_option('growify_api_key');
delete_option('growify_enable_admin_tracking');
delete_site_option('growify_enable_admin_tracking');
delete_option('growify_api_version');
delete_site_option('growify_api_version');

// Delete Transients
delete_transient('growify_ai_activation_redirect');
delete_site_transient('growify_ai_activation_redirect');

