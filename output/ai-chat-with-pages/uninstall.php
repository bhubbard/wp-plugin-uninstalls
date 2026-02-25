<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aichwp_settings');
delete_site_option('aichwp_settings');
delete_option('aichwp_create_initial_embeddings_running');
delete_site_option('aichwp_create_initial_embeddings_running');
delete_option('aichwp_embeddings_progress');
delete_site_option('aichwp_embeddings_progress');
delete_option('aichwp_post_embeddings_are_stale');
delete_site_option('aichwp_post_embeddings_are_stale');
delete_option('aichwp_embeddings_progress_semaphore');
delete_site_option('aichwp_embeddings_progress_semaphore');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

