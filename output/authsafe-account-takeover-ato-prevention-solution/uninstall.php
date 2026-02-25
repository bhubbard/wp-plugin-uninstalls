<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ats_options');
delete_site_option('ats_options');
delete_option('ats_policy_options');
delete_site_option('ats_policy_options');
delete_option('activate_authsafe');
delete_site_option('activate_authsafe');

// Delete Transients
delete_transient('your_plugin_redirect');
delete_site_transient('your_plugin_redirect');

