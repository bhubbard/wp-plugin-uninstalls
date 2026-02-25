<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_rss_cache');
delete_site_option('wp_rss_cache');

// Delete Transients
delete_transient('_wp_rss_retriever_activation_redirect');
delete_site_transient('_wp_rss_retriever_activation_redirect');

