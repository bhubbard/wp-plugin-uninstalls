<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ev_protected_pages');
delete_site_option('ev_protected_pages');
delete_option('evidence_script');
delete_site_option('evidence_script');
delete_option('ev_allowed_devices');
delete_site_option('ev_allowed_devices');
delete_option('ev_activation_redirect');
delete_site_option('ev_activation_redirect');

