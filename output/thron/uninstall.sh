#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thron_option_api_page'
wp option delete 'thron_list_folder'
wp option delete 'thron_folders'
wp option delete 'thron_pkey'
wp option delete 'thron_rootCategoryId'
wp option delete 'thron_playerTemplates'
wp option delete 'thron_last_sync'
wp option delete 'thron_token_id'
wp option delete 'tracking_context'
wp option delete 'thron_token_id_time'
wp option delete 'thron_tracking_context'

# Clear Cron Jobs
wp cron event delete 'thron_update_file'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crop_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crop_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crop_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crop_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crop_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crop_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crop_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crop_params'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thron_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thron_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thron_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thron_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crop_absolute_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crop_absolute_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crop_absolute_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crop_absolute_params'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
