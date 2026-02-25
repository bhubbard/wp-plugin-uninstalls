<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('awef_toc_cache_cleared');
delete_site_transient('awef_toc_cache_cleared');
delete_transient('awef_llms_written');
delete_site_transient('awef_llms_written');
delete_transient('awef_llms_write_failed');
delete_site_transient('awef_llms_write_failed');

