<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bfi_settings');
delete_site_option('bfi_settings');

// Delete Transients
delete_transient('_bfie_activation_redirect');
delete_site_transient('_bfie_activation_redirect');

