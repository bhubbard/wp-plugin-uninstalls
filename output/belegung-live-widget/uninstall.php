<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('belewi_options');
delete_site_option('belewi_options');

// Delete Transients
delete_transient('belewi_do_activation_redirect');
delete_site_transient('belewi_do_activation_redirect');

