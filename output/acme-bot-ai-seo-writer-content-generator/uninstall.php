<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acmebot_secret');
delete_site_option('acmebot_secret');

// Delete Transients
delete_transient('acmebot_activation_redirect');
delete_site_transient('acmebot_activation_redirect');
delete_transient('acmebot_settings_errors');
delete_site_transient('acmebot_settings_errors');

