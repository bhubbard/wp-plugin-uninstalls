<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lspw_options');
delete_site_option('lspw_options');
delete_option('lsp_options');
delete_site_option('lsp_options');

// Delete Transients
delete_transient('lspw-admin-notice');
delete_site_transient('lspw-admin-notice');

