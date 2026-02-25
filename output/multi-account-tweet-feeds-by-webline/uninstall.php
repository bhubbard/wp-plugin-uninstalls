<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wli_matf_options');
delete_site_option('wli_matf_options');
delete_option('MATF_settings');
delete_site_option('MATF_settings');

