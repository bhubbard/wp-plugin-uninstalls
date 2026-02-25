#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dvin508_enable_front'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plugin_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plugin_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plugin_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plugin_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_course_page_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_course_page_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_course_page_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_course_page_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
