#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autopost_ai_do_activation_redirect'
wp option delete 'autopost_ai_show_deactivation_warning'
wp option delete 'autopost_ai_remove_data_on_uninstall'
wp option delete 'autopost_ai_api_key'
wp option delete 'autopost_ai_post_settings'
wp option delete 'autopost_ai_prompt'
wp option delete 'autopost_ai_last_post_created_at'

# Clear Cron Jobs
wp cron event delete 'autopost_ai_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autopost_ai_queue_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autopost_ai_queue_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autopost_ai_queue_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autopost_ai_queue_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
