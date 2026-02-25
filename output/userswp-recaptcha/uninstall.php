<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uwp_settings');
delete_site_option('uwp_settings');

// Delete Transients
delete_transient('_uwp_recaptcha_activation_redirect');
delete_site_transient('_uwp_recaptcha_activation_redirect');

