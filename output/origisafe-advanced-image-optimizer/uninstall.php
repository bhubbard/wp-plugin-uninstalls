<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hsbc_webp_clean_sweep_originals_cursor');
delete_site_option('hsbc_webp_clean_sweep_originals_cursor');

// Delete Transients
delete_transient('hsbc_webp_job_lock');
delete_site_transient('hsbc_webp_job_lock');

