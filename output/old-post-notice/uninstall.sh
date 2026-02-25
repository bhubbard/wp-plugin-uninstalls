#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'old_post_notice_version'
wp option delete 'old_post_notice_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_post_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_post_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_post_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_post_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_post_notice_behavior'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_post_notice_behavior'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_post_notice_behavior'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_post_notice_behavior'"
