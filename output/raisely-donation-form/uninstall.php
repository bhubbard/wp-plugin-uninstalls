<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('raisely_auth_method');
delete_site_option('raisely_auth_method');
delete_option('raisely_api_key');
delete_site_option('raisely_api_key');

// Delete Transients
delete_transient('raisely-setup-notice');
delete_site_transient('raisely-setup-notice');

