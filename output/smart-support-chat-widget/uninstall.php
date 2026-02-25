<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartsupport_wp_settings');
delete_site_option('smartsupport_wp_settings');
delete_option('smartsupport_wp_rag_collections');
delete_site_option('smartsupport_wp_rag_collections');

// Delete Transients
delete_transient('smartsupport_rag_notice');
delete_site_transient('smartsupport_rag_notice');
delete_transient('smartsupport_wp_activation_redirect');
delete_site_transient('smartsupport_wp_activation_redirect');

