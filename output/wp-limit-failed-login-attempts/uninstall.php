<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WPLFLA_options');
delete_site_option('WPLFLA_options');
delete_option('Block_hash_code');
delete_site_option('Block_hash_code');
delete_option('WPLFLA_version');
delete_site_option('WPLFLA_version');
delete_option('Block_hash_code_range_ip');
delete_site_option('Block_hash_code_range_ip');
delete_option('Block_hash_code_country');
delete_site_option('Block_hash_code_country');

