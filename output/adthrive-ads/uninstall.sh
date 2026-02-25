#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adthrive_options'
wp option delete 'adthrive_ads'
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'wp_adthrive_updated'
wp transient delete 'adthrive_plugin_settings'

# Clear Cron Jobs
wp cron event delete 'adthrive_daily_event'
wp cron event delete 'adthrive_cls_daily_event'
wp cron event delete 'adthrive_site_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adthrive_ads_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adthrive_ads_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adthrive_ads_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adthrive_ads_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adthrive_ads_disable_content_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adthrive_ads_disable_content_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adthrive_ads_disable_content_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adthrive_ads_disable_content_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adthrive_ads_disable_auto_insert_videos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adthrive_ads_disable_auto_insert_videos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adthrive_ads_disable_auto_insert_videos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adthrive_ads_disable_auto_insert_videos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adthrive_ads_re_enable_ads_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adthrive_ads_re_enable_ads_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adthrive_ads_re_enable_ads_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adthrive_ads_re_enable_ads_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adthrive_ads_enable_admin_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adthrive_ads_enable_admin_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adthrive_ads_enable_admin_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adthrive_ads_enable_admin_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adthrive_ads_disable_admin_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adthrive_ads_disable_admin_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adthrive_ads_disable_admin_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adthrive_ads_disable_admin_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adthrive_ads_disable_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adthrive_ads_disable_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adthrive_ads_disable_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adthrive_ads_disable_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adthrive_ads_enable_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adthrive_ads_enable_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adthrive_ads_enable_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adthrive_ads_enable_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
