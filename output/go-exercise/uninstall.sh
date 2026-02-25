#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'GOEX_VER'
wp option delete 'goex_update'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'widget_goex'
wp option delete 'goex_settings_config'
wp option delete 'goex_rand'
wp option delete 'goex_transients'

# Clear Cron Jobs
wp cron event delete 'goex_cache_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'goExBodyImgID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'goExBodyImgID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'goExBodyImgID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'goExBodyImgID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_goex_link_to_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_goex_link_to_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_goex_link_to_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_goex_link_to_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'workout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'workout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'workout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'workout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'go_exercise_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'go_exercise_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'go_exercise_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'go_exercise_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'go_exercise_synergist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'go_exercise_synergist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'go_exercise_synergist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'go_exercise_synergist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'go_exercise_stabiliser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'go_exercise_stabiliser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'go_exercise_stabiliser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'go_exercise_stabiliser'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'go_exercise_muscle_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'go_exercise_muscle_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'go_exercise_muscle_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'go_exercise_muscle_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'go_exercise_muscle_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'go_exercise_muscle_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'go_exercise_muscle_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'go_exercise_muscle_action'"
