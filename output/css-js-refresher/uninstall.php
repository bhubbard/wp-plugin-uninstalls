<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cssjsr_clear_cache_wp_rocket');
delete_site_option('cssjsr_clear_cache_wp_rocket');
delete_option('cssjsr_clear_cache_w3tc');
delete_site_option('cssjsr_clear_cache_w3tc');
delete_option('cssjsr_clear_cache_litespeed');
delete_site_option('cssjsr_clear_cache_litespeed');

