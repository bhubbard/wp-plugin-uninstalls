#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xhtheme_ai_toolbox_settings'
wp option delete 'xhtheme_ai_toolbox_thread_rewrite'
wp option delete 'xhtheme_ai_toolbox_automate_rules'
wp option delete 'xhtheme_aitoolbox_users'
wp option delete 'xhaitool_theme_notices'
wp option delete 'xhtheme_aitoolbox_chatmodels'
wp option delete 'xhtheme_aitoolbox_chatversion'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'default_%'"
wp option delete 'xhtheme_ai_toolbox_avatarlocal_error'
wp option delete 'xhtheme_ai_toolbox_addmysql'
wp option delete 'xhtheme_ai_toolbox_interact_dbver'
wp option delete 'default_favorites'
wp option delete 'xhtheme_ai_toolbox_automate'
wp option delete 'xhaitool_thread_pageid'

# Delete Transients
wp transient delete 'xhtheme_ai_toolbox_activated'
wp transient delete 'xhtheme_ai_toolbox_error_log'
wp transient delete 'xhaitool_errorrate_limit'
wp transient delete 'xhtheme_react_error_rate_limit'
wp transient delete 'xhtheme_aitoolbox_apicheck'
wp transient delete 'xhtheme_aitoolbox_users_error'
wp transient delete 'xhtheme_aitoolbox_users'
wp transient delete 'xhtheme_aitoolbox_chatmodels_time'
wp transient delete 'xhtheme_aitoolbox_chatmodels_lasttime'
wp transient delete 'xhaitoolbox_clear_overduecrons_2'
wp transient delete 'xhaitoolbox_cron_queue_process'
wp transient delete 'xhtheme_randcomment_cooldown'
wp transient delete 'xhtheme_ai_toolbox_automate_migrated'
wp transient delete 'xhinteract_aiwords'

# Clear Cron Jobs
wp cron event delete 'xhaitoolbox_minute_cron'
wp cron event delete 'xhaitoolbox_twicedaily_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_excerptai'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_excerptai'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_excerptai'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_excerptai'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xhai_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xhai_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xhai_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xhai_excerpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seotitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seotitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seotitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seotitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xhaitool_aitasks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xhaitool_aitasks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xhaitool_aitasks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xhaitool_aitasks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiimage_cueword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiimage_cueword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiimage_cueword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiimage_cueword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiimage_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiimage_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiimage_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiimage_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xhai_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xhai_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xhai_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xhai_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_interact_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_interact_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_interact_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_interact_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_task_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_task_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_task_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_task_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_interact_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_interact_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_interact_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_interact_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xhaitool_aitasks_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xhaitool_aitasks_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xhaitool_aitasks_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xhaitool_aitasks_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xhai_postparent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xhai_postparent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xhai_postparent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xhai_postparent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xhai_threadtype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xhai_threadtype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xhai_threadtype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xhai_threadtype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xhai_perspective'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xhai_perspective'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xhai_perspective'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xhai_perspective'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_comment_likes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_comment_likes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_comment_likes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_comment_likes'"
