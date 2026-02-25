#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_desk_net_id_in_permalink'
wp option delete 'wp_desk_net_status_desk_net_to_wp_removed'
wp option delete 'wp_desk_net_desk-net-list-active-status'
wp option delete 'wp_desk_net_platform_id'
wp option delete 'wp_desk_net_status_wp_to_desk_net_publish'
wp option delete 'wp_desk_net_status_desk_net_to_wp_5'
wp option delete 'wp_desk_net_desk-net-list-deactivated-status'
wp option delete 'wp_desk_net_formats_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-files'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_desk_net_status_desk_net_to_wp_%'"
wp option delete 'wp_desk_net_slug_slug_syncing'
wp option delete 'wp_desk_net_category_custom_field_in_wp_custom_field'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_desk_net_category_desk_net_to_wp_%'"
wp option delete 'wp_desk_net_category_desk_net_to_wp_no_category'
wp option delete 'wp_desk_net_api_key'
wp option delete 'wp_desk_net_api_secret'
wp option delete 'wp_desk_net_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%custom_fields_list'"
wp option delete 'wp_desk_net_desk_net_category_list'
wp option delete 'wp_desk_net_user_login'
wp option delete 'wp_desk_net_user_password'
wp option delete 'wp_desk_net_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_desk_net_task_desk_net_to_wp_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_desk_net_task_wp_to_desk_net_%'"
wp option delete 'wp_desk_net__settings'
wp option delete 'wp_desk_net__authorization'
wp option delete 'wp_desk_net_status_list'
wp option delete 'wp_desk_net_initial_status_syncing'
wp option delete 'wp_desk_net_category_list'
wp option delete 'wp_desk_net_task_list'
wp option delete 'wp_desk_net_custom_fields_list'
wp option delete 'wp_desk_net_publication_custom_fields_list'
wp option delete 'wp_desk_net_content_list'
wp option delete 'wp_desk_net_slug_list'
wp option delete 'wp_desk_net_initial_slug_syncing'
wp option delete 'wp_desk_net_id_in_permalink_option'
wp option delete 'wp_desk_net_desk_net_custom_fields_list'
wp option delete 'wp_desk_net_desk_net_publication_custom_fields_list'
wp option delete 'wp_desk_net_initial_slug_syncing_checkbox'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_desk_net_remove_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_desk_net_remove_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_desk_net_remove_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_desk_net_remove_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'desk_net_updated_by_wp_update_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'desk_net_updated_by_wp_update_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'desk_net_updated_by_wp_update_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'desk_net_updated_by_wp_update_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'desk_net_status_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'desk_net_status_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'desk_net_status_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'desk_net_status_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_desk_net_lock_update_post_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_desk_net_lock_update_post_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_desk_net_lock_update_post_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_desk_net_lock_update_post_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_desk_net_file_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_desk_net_file_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_desk_net_file_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_desk_net_file_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'desk_net_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'desk_net_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'desk_net_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'desk_net_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'desk_net_author_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'desk_net_author_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'desk_net_author_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'desk_net_author_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'desk_net_status_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'desk_net_status_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'desk_net_status_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'desk_net_status_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'publications_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'publications_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'publications_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'publications_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'desk_net_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'desk_net_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'desk_net_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'desk_net_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_desk_net_post_previous_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_desk_net_post_previous_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_desk_net_post_previous_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_desk_net_post_previous_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_desk_net_change_post_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_desk_net_change_post_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_desk_net_change_post_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_desk_net_change_post_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'desk_net_notice_message_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'desk_net_notice_message_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'desk_net_notice_message_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'desk_net_notice_message_id'"
