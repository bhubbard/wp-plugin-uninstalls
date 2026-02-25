#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ilrc_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ilrc_notice_userid_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ilrc_notice_userid_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ilrc_notice_userid_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ilrc_notice_userid_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ilrc_exclude_related_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ilrc_exclude_related_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ilrc_exclude_related_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ilrc_exclude_related_posts'"
