<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sasm-options-role');
delete_site_option('sasm-options-role');
delete_option('sasm-encrypted-data');
delete_site_option('sasm-encrypted-data');
delete_option('sasm_enable_logs');
delete_site_option('sasm_enable_logs');

