#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpal-settings'
wp option delete 'wpal_log_limit_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpal_published_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpal_published_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpal_published_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpal_published_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpal_edited_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpal_edited_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpal_edited_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpal_edited_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpal_before_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpal_before_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpal_before_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpal_before_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpal_after_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpal_after_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpal_after_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpal_after_title'"
