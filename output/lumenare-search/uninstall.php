<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lumenare_search_settings');
delete_site_option('lumenare_search_settings');
delete_option('lumenare_search_db_version');
delete_site_option('lumenare_search_db_version');
delete_option('lumenare_search_last_indexed');
delete_site_option('lumenare_search_last_indexed');
delete_option('lumenare_search_stop_words_hash');
delete_site_option('lumenare_search_stop_words_hash');
delete_option('lumenare_search_last_post_types');
delete_site_option('lumenare_search_last_post_types');

// Delete Transients
delete_transient('lumenare_reindex_batch');
delete_site_transient('lumenare_reindex_batch');

// Clear Cron Jobs
wp_clear_scheduled_hook('lumenare_search_initial_index');
wp_clear_scheduled_hook('lumenare_search_calculate_trending');

