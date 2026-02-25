<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_writer_api_key');
delete_site_option('ai_writer_api_key');
delete_option('aiwriter_rate_us');
delete_site_option('aiwriter_rate_us');
delete_option('wmc_redirect');
delete_site_option('wmc_redirect');

