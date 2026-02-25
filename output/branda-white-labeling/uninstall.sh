#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'branda_black_friday_2021_dismissed'
wp option delete 'registration'
wp option delete 'active_sitewide_plugins'
wp option delete 'ub_stats'
wp option delete 'wpmudev_df_widget_options'

# Clear Cron Jobs
wp cron event delete 'branda_email_logs_cleaning'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_welcome_dialog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_welcome_dialog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_welcome_dialog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_welcome_dialog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ub_log_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ub_log_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ub_log_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ub_log_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tips_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tips_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tips_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tips_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%recipient'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%recipient'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%recipient'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%recipient'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%from_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%from_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%from_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%from_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%from_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%from_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%from_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%from_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_tips'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_tips'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_tips'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_tips'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Branda_Cookie_Notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Branda_Cookie_Notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Branda_Cookie_Notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Branda_Cookie_Notice'"
