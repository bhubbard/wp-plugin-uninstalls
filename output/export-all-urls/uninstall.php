<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('export_all_urls_activation_redirect');
delete_site_transient('export_all_urls_activation_redirect');

