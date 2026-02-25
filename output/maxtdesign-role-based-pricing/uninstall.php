<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maxtdesign_rbp_cache_logs');
delete_site_option('maxtdesign_rbp_cache_logs');
delete_option('maxtdesign_rbp_last_cache_clear');
delete_site_option('maxtdesign_rbp_last_cache_clear');
delete_option('maxtdesign_rbp_db_logs');
delete_site_option('maxtdesign_rbp_db_logs');
delete_option('maxtdesign_rbp_query_logs');
delete_site_option('maxtdesign_rbp_query_logs');
delete_option('maxtdesign_rbp_cache_method');
delete_site_option('maxtdesign_rbp_cache_method');
delete_option('maxtdesign_rbp_version');
delete_site_option('maxtdesign_rbp_version');
delete_option('maxtdesign_rbp_last_performance_cleanup');
delete_site_option('maxtdesign_rbp_last_performance_cleanup');

// Delete Transients
delete_transient('maxtdesign_rbp_hook_stats');
delete_site_transient('maxtdesign_rbp_hook_stats');
delete_transient('maxtdesign_rbp_activation_notice');
delete_site_transient('maxtdesign_rbp_activation_notice');

