<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('decfirebase_url');
delete_site_option('decfirebase_url');
delete_option('decfirebase_secrets');
delete_site_option('decfirebase_secrets');

// Delete Transients
delete_transient('_decfirebase_activation_redirect');
delete_site_transient('_decfirebase_activation_redirect');

