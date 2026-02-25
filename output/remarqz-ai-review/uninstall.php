<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('remaaire_redirect_url');
delete_site_option('remaaire_redirect_url');

// Delete Transients
delete_transient('remaaire_activation_redirect_url');
delete_site_transient('remaaire_activation_redirect_url');

