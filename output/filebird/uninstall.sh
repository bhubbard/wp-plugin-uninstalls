#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fbv_rest_api_key'
wp option delete 'filebird_activation_error'
wp option delete 'filebird_activation_old_domain'
wp option delete 'fbv_old_data_updated_to_v4'
wp option delete 'fbv_first_folder_notice'
wp option delete 'fbv_is_new_user'
wp option delete 'njt_fbv_folder_per_user'
wp option delete 'pigen_options'
wp option delete 'njt_fbv_allow_svg_upload'
wp option delete 'fbv_review'
wp option delete 'filebird_saved_downloads'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'filebird_backup_%'"
wp option delete 'fbv_folder_colors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'njt_fb_updated_from_%'"
wp option delete 'njt_fbv_is_search_using_api'
wp option delete 'fbv_settings'
wp option delete 'fbv_version'
wp option delete 'fbv_first_time_active'

# Clear Cron Jobs
wp cron event delete 'filebird_remove_zip_files'
wp cron event delete 'filebird_every_12_hours_jobs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'new_fbv_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'new_fbv_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'new_fbv_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'new_fbv_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pll_filter_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pll_filter_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pll_filter_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pll_filter_content'"
