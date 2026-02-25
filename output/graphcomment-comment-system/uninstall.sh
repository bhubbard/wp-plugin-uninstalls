#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gc-msg'
wp option delete 'gc_sync_comments'
wp option delete 'gc-sync-error'
wp option delete 'gc_create_website'
wp option delete 'gc_sync_interval'
wp option delete 'gc_sync_last_success'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%status_stopped'"
wp option delete 'gc_api_public_key'
wp option delete 'gc_api_private_key'
wp option delete 'gc_import_date_begin'
wp option delete 'gc_import_date_end'
wp option delete 'gc_import_total'
wp option delete 'gc_import_nbr_comment_import'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%error_msg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%batch_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%total'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nbr_comment_import'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%date_begin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%date_end'"
wp option delete 'gc_public_key'
wp option delete 'gc_notif_comments'
wp option delete 'gc_website_id'
wp option delete 'gc-notif-error'
wp option delete 'graphcomment-disconnect'
wp option delete 'gc_oauth_client_key'
wp option delete 'gc_oauth_client_secret'
wp option delete 'gc_oauth_client_token'
wp option delete 'gc_oauth_client_code'
wp option delete 'gc_activated'
wp option delete 'gc_activated_all'
wp option delete 'gc_activated_from'
wp option delete 'gc_seo_activated'
wp option delete 'gc_sso_activated'
wp option delete 'gc_overlay_activated'
wp option delete 'gc_overlay_visible'
wp option delete 'gc_overlay_bubble'
wp option delete 'gc_overlay_button_label'
wp option delete 'gc_overlay_width'
wp option delete 'gc_overlay_fixed_header_height'
wp option delete 'gc_overlay_button_color'
wp option delete 'gc_overlay_button_background'
wp option delete 'gc_readonly_activated'
wp option delete 'gc_readonly_who'
wp option delete 'gc_readonly_roles'
wp option delete 'gc_debug_activated'
wp option delete 'gc_change_website'
wp option delete 'Activated_Plugin'
wp option delete 'gc-import-error'

# Clear Cron Jobs
wp cron event delete 'graphcomment_cron_task_sync_comments_action'
wp cron event delete 'graphcomment_cron_task_fetch_keys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
