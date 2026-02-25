#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wd_bwg_options'
wp option delete 'wd_bwg_version'
wp option delete 'wd_bwg_initial_version'
wp option delete 'bwg_subscribe_done'
wp option delete 'tenweb_notice_status'
wp option delete 'tenweb_notice_version'
wp option delete 'bwg_subscribe_email'
wp option delete 'two-front-page-speed'
wp option delete 'twb_images_total_size'
wp option delete 'twb_speed_score'
wp option delete 'tenweb_domain_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_workspace_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_domain_id'"
wp option delete 'tenweb_access_token'
wp option delete 'twb_show_cta'
wp option delete 'bwg_onboarding_step'
wp option delete 'bwg_magic_data'
wp option delete 'twb_hompage_optimized'
wp option delete 'bwg_filemanager_sorting'
wp option delete 'bwg_gallery_sorting'
wp option delete 'bwg_speed'
wp option delete 'tenweb_admin_demo'
wp option delete 'bwg_wp_editor_state'
wp option delete 'tenweb_user_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_notice'"

# Delete Transients
wp transient delete 'twb_optimized_pages'
wp transient delete 'tenweb_subscription_id'
wp transient delete 'bwg_update_check'

# Clear Cron Jobs
wp cron event delete 'bwg_schedule_event_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bwg_photo_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bwg_photo_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bwg_photo_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bwg_photo_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'two_page_speed'"
