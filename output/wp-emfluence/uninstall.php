<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emfluence_global');
delete_site_option('emfluence_global');
delete_option('emfl_widget_recaptcha');
delete_site_option('emfl_widget_recaptcha');

// Delete Transients
delete_transient('emfl-access-token-validation');
delete_site_transient('emfl-access-token-validation');

