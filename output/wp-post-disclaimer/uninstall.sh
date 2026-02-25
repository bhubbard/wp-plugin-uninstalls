#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppd_options'
wp option delete 'wppd_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wppd_post_disclaimer_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wppd_post_disclaimer_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wppd_post_disclaimer_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wppd_post_disclaimer_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wppd_post_disclaimer_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wppd_post_disclaimer_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wppd_post_disclaimer_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wppd_post_disclaimer_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wppd_post_disclaimer_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wppd_post_disclaimer_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wppd_post_disclaimer_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wppd_post_disclaimer_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wppd_post_disclaimer_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wppd_post_disclaimer_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wppd_post_disclaimer_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wppd_post_disclaimer_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wppd_post_disclaimer_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wppd_post_disclaimer_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wppd_post_disclaimer_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wppd_post_disclaimer_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wppd_post_disclaimer_title_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wppd_post_disclaimer_title_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wppd_post_disclaimer_title_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wppd_post_disclaimer_title_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wppd_post_disclaimer_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wppd_post_disclaimer_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wppd_post_disclaimer_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wppd_post_disclaimer_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wppd_post_disclaimer_icon_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wppd_post_disclaimer_icon_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wppd_post_disclaimer_icon_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wppd_post_disclaimer_icon_size'"
