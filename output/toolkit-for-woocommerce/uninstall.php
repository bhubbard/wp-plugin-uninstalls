<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('geargag_plugins_list');
delete_site_transient('geargag_plugins_list');
delete_transient('geargag_woocommerce_toolkit_changelog');
delete_site_transient('geargag_woocommerce_toolkit_changelog');

