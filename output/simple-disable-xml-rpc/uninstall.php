<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sdxrpc_disable_enabled');
delete_site_option('sdxrpc_disable_enabled');

// Delete Transients
delete_transient('sdxrpc_activation_redirect');
delete_site_transient('sdxrpc_activation_redirect');

