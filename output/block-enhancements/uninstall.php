<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('be_allowed_blocks');
delete_site_option('be_allowed_blocks');
delete_option('be_breakpoints');
delete_site_option('be_breakpoints');
delete_option('block_enhancements_activation_redirect');
delete_site_option('block_enhancements_activation_redirect');
delete_option('cbb_breakpoints');
delete_site_option('cbb_breakpoints');

// Delete Transients
delete_transient('be_docs');
delete_site_transient('be_docs');

