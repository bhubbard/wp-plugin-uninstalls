<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpfaqcb_settings');
delete_site_option('wpfaqcb_settings');
delete_option('wpfaqcb_admin_lang');
delete_site_option('wpfaqcb_admin_lang');

// Delete Transients
delete_transient('wpfaqcb_activation_redirect');
delete_site_transient('wpfaqcb_activation_redirect');

