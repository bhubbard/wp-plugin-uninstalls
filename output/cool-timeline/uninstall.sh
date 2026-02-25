#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctl-postmeta-migration'
wp option delete 'cool-free-timeline-v'
wp option delete 'cool-timelne-v'
wp option delete 'cool_timeline_options'
wp option delete 'cool_timeline_settings'
wp option delete 'ctl_settings_migration_status'
wp option delete 'timeline_express_migrated'
wp option delete 'timeline_express_storage'
wp option delete 'csf_demo_mode'
wp option delete 'ctl_initial_save_version'
wp option delete 'ctl-install-date'
wp option delete 'cpfm_opt_in_choice_cool-timeline'
wp option delete 'dismiss_ele_addon_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_remove_notice'"
wp option delete 'cool-timelne-installDate'
wp option delete 'cool-timelne-ratingDiv'
wp option delete 'cool-timeline-already-rated'
wp option delete 'ctl_flush_rewrite_rules_flag'
wp option delete 'cool-timelne-plugin-type'
wp option delete 'ctl-upgraded'
wp option delete 'cool-timelne-type'
wp option delete 'ctl_shortcode_page_ids'
wp option delete 'ctl_layout_used'

# Clear Cron Jobs
wp cron event delete 'ctl_extra_data_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'announcement_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'announcement_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'announcement_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'announcement_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'announcement_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'announcement_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'announcement_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'announcement_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'announcement_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'announcement_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'announcement_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'announcement_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'announcement_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'announcement_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'announcement_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'announcement_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'announcement_custom_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'announcement_custom_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'announcement_custom_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'announcement_custom_excerpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctl_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctl_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctl_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctl_visible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctl_story_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctl_story_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctl_story_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctl_story_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctl_post_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctl_post_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctl_post_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctl_post_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctl_story_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctl_story_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctl_story_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctl_story_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_based_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_based_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_based_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_based_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
