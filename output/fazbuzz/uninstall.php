<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fazbuzz_valid_key');
delete_site_option('fazbuzz_valid_key');
delete_option('fazbuzz_post_category');
delete_site_option('fazbuzz_post_category');
delete_option('FAZBUZZ_VERSION');
delete_site_option('FAZBUZZ_VERSION');
delete_option('fazbuzz_key');
delete_site_option('fazbuzz_key');

