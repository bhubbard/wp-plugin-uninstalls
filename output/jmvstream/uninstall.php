<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jmvstream-api-settings');
delete_site_option('jmvstream-api-settings');
delete_option('jmvstream-general-settings');
delete_site_option('jmvstream-general-settings');
delete_option('jmvstream_do_activation_redirect');
delete_site_option('jmvstream_do_activation_redirect');

// Delete Transients
delete_transient('jmvstream_auth_token');
delete_site_transient('jmvstream_auth_token');

