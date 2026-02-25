<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom-base-terms');
delete_site_option('custom-base-terms');

// Delete Transients
delete_transient('custom_base_terms_plugin');
delete_site_transient('custom_base_terms_plugin');

