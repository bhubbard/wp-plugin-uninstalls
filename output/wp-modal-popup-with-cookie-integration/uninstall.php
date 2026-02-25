<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wmpci_options');
delete_site_option('wmpci_options');
delete_option('wmpci_plugin_version');
delete_site_option('wmpci_plugin_version');

// Delete Transients
delete_transient('wmpci_install_notice');
delete_site_transient('wmpci_install_notice');

