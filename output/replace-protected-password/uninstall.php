<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('replace-protected-password-errors');
delete_site_transient('replace-protected-password-errors');
delete_transient('replace-protected-password-updated');
delete_site_transient('replace-protected-password-updated');

