#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shariff3uu_basic'
wp option delete 'shariff3uu_design'
wp option delete 'shariff3uu_advanced'
wp option delete 'shariff3uu_statistic'
wp option delete 'shariff3UU'
wp option delete 'shariff3UU_basic'
wp option delete 'shariff3UU_design'
wp option delete 'shariff3UU_advanced'
wp option delete 'shariff3UU_mailform'
wp option delete 'shariff3UU_statistic'
wp option delete 'widget_shariff'
wp option delete 'shariff3UU_hide_update_notice'
wp option delete 'shariff3uu_mailform'

# Clear Cron Jobs
wp cron event delete 'shariff3uu_fill_cache'
wp cron event delete 'shariff3UU_fill_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shariff_metabox_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shariff_metabox_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shariff_metabox_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shariff_metabox_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shariff_metabox_before'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shariff_metabox_before'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shariff_metabox_before'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shariff_metabox_before'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shariff_metabox_after'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shariff_metabox_after'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shariff_metabox_after'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shariff_metabox_after'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shariff_metabox_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shariff_metabox_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shariff_metabox_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shariff_metabox_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shariff_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shariff_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shariff_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shariff_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shariff_metabox_ignore_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shariff_metabox_ignore_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shariff_metabox_ignore_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shariff_metabox_ignore_widget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shariff3UU_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shariff3UU_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shariff3UU_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shariff3UU_ignore_notice'"
