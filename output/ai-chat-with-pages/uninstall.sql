-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aichwp_settings', 'aichwp_create_initial_embeddings_running', 'aichwp_embeddings_progress', 'aichwp_post_embeddings_are_stale', 'aichwp_embeddings_progress_semaphore', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

