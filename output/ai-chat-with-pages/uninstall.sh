#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aichwp_settings'
wp option delete 'aichwp_create_initial_embeddings_running'
wp option delete 'aichwp_embeddings_progress'
wp option delete 'aichwp_post_embeddings_are_stale'
wp option delete 'aichwp_embeddings_progress_semaphore'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

