#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'superdraft_settings'
wp option delete 'superdraft_api_keys'
wp option delete 'superdraft_custom_models'
wp option delete 'superdraft_bulk_process_data'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_superdraft_image_prompt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_superdraft_image_prompt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_superdraft_image_prompt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_superdraft_image_prompt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_superdraft_original_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_superdraft_original_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_superdraft_original_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_superdraft_original_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_superdraft_image_model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_superdraft_image_model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_superdraft_image_model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_superdraft_image_model'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_superdraft_log_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_superdraft_log_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_superdraft_log_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_superdraft_log_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'superdraft_writing_tips'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'superdraft_writing_tips'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'superdraft_writing_tips'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'superdraft_writing_tips'"
