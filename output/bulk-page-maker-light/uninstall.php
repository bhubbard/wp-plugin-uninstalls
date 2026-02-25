<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpm_installed');
delete_site_option('bpm_installed');
delete_option('BPM_INSTALLED');
delete_site_option('BPM_INSTALLED');
delete_option('BPM_VERSION');
delete_site_option('BPM_VERSION');

// Delete Transients
delete_transient('bpmaker_all_pages');
delete_site_transient('bpmaker_all_pages');
delete_transient('bpmaker_pages_count');
delete_site_transient('bpmaker_pages_count');

