<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('taxoclean_current_taxo');
delete_site_option('taxoclean_current_taxo');
delete_option('taxoclean_max_per_page');
delete_site_option('taxoclean_max_per_page');
delete_option('taxoclean_orphan_level');
delete_site_option('taxoclean_orphan_level');
delete_option('taxoclean_lookalike_level');
delete_site_option('taxoclean_lookalike_level');
delete_option('taxoclean_license');
delete_site_option('taxoclean_license');
delete_option('taxoclean_fast_mode');
delete_site_option('taxoclean_fast_mode');
delete_option('taxoclean_counter');
delete_site_option('taxoclean_counter');

