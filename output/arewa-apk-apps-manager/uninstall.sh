#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arewa_apk_settings'
wp option delete 'arewa_apk_download_count'
wp option delete 'arewa_apk_plugin_settings'

# Delete Transients
wp transient delete 'arewa_apk_comments_count'
wp transient delete 'arewa_apk_average_rating'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arewa_apk_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arewa_apk_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arewa_apk_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arewa_apk_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arewa_apk_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arewa_apk_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arewa_apk_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arewa_apk_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arewa_apk_screenshots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arewa_apk_screenshots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arewa_apk_screenshots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arewa_apk_screenshots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arewa_apk_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arewa_apk_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arewa_apk_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arewa_apk_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arewa_apk_short_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arewa_apk_short_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arewa_apk_short_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arewa_apk_short_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arewa_apk_about'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arewa_apk_about'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arewa_apk_about'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arewa_apk_about'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arewa_apk_comments_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arewa_apk_comments_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arewa_apk_comments_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arewa_apk_comments_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arewa_apk_disable_seo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arewa_apk_disable_seo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arewa_apk_disable_seo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arewa_apk_disable_seo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arewa_apk_feature_graphic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arewa_apk_feature_graphic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arewa_apk_feature_graphic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arewa_apk_feature_graphic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arewa_apk_download_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arewa_apk_download_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arewa_apk_download_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arewa_apk_download_count'"
