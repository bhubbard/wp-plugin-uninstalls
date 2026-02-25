<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plwao_options');
delete_site_option('plwao_options');
delete_option('plwao_plugin_version');
delete_site_option('plwao_plugin_version');

// Delete Transients
delete_transient('plwao_install_notice');
delete_site_transient('plwao_install_notice');

