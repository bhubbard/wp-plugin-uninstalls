<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('post-updated');
delete_site_transient('post-updated');
delete_transient('post-error');
delete_site_transient('post-error');

