<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssc_real_seo_baseline_last_results');
delete_site_option('ssc_real_seo_baseline_last_results');

// Delete Transients
delete_transient('ssc_real_seo_baseline_error');
delete_site_transient('ssc_real_seo_baseline_error');
delete_transient('ssc_real_seo_baseline_results');
delete_site_transient('ssc_real_seo_baseline_results');

